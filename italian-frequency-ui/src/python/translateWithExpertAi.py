import requests
import json
import spacy
from googletrans import Translator

nlp_it = spacy.load('it_core_news_sm')
nlp_en = spacy.load('en_core_web_sm')

bearer_token = 'replaceMe'

# set the base URL for the disambiguation endpoint
url = 'https://nlapi.expert.ai/v2/analyze/standard/it/disambiguation'

# set the list of words to translate
words = ['ciao', 'buongiorno', 'amo', 'cane', 'del', 'macchina']

# create the request payload
payload = {
    'document': {
        'text': ' '.join(words)
    },
    'parameters': {
        'properties': 'lemma', 'translation'
        'knowledgeGraph': 'off',
        'disambiguation': {
            'disambiguateConcepts': True,
            'hierarchical': True,
            'ontos': ['*'],
            'scoreThreshold': 0.05,
            'confidentConceptOnly': True,
            'synconBoost': 0.0,
            'contextualScoreBoost': 0.0
        },
        'output': {
            "format": "json"
        }
    }
}

# Define a function to translate a word to English and retrieve its parts of speech using Google Translate API and spaCy


def translate_word(word):
    # Translate the word to English using Google Translate API
    translator = Translator(service_urls=['translate.google.com'])
    translation = translator.translate(word, src='it', dest='en')

    # Parse the English text to retrieve the parts of speech
    doc_en = nlp_en(translation.text)
    pos_list = [token.pos_ for token in doc_en]

    # Return the word, translation, and parts of speech
    return {'word': word, 'translation': translation.text, 'pos': pos_list}


# set the authorization header with the bearer token
headers = {
    'Authorization': f'Bearer {bearer_token}'
}

# send the request to the API
response = requests.post(url, headers=headers, json=payload)

# parse the response JSON
data = json.loads(response.content)


# loop through the tokens in the response and print the lemma, part of speech, and translations
for i, token in enumerate(data['data']['tokens']):
    translation = translate_word(words[i])
    print(f'{words[i]} ({token["pos"]}): ', (translation.get('translation')))
    print(token["morphology"])
    print(f'Lemma ({token["lemma"]}):')
    print('---')
