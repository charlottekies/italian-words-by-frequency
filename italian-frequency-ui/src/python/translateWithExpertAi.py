import requests
import json
import spacy
from googletrans import Translator

nlp_it = spacy.load('it_core_news_sm')
nlp_en = spacy.load('en_core_web_sm')

bearer_token = 'eyJraWQiOiI1RDVOdFM1UHJBajVlSlVOK1RraXVEZE15WWVMMFJQZ3RaUDJGTlhESHpzPSIsImFsZyI6IlJTMjU2In0.eyJjdXN0b206Y291bnRyeSI6IlVTIiwic3ViIjoiMjBiMmNkYzQtNzBiZC00ZjlkLTgxYTItNDc2NmZjOGMxMTZjIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5ldS13ZXN0LTEuYW1hem9uYXdzLmNvbVwvZXUtd2VzdC0xX0FVSGdRMDhDQiIsInBob25lX251bWJlcl92ZXJpZmllZCI6ZmFsc2UsImNvZ25pdG86dXNlcm5hbWUiOiIyMGIyY2RjNC03MGJkLTRmOWQtODFhMi00NzY2ZmM4YzExNmMiLCJjdXN0b206Y29tcGFueSI6InNlbGYgb3duZWQgIiwiYXVkIjoiMWVnczYzcTk5cDNzZWJlY2hzYjcyOXQ4MG8iLCJldmVudF9pZCI6IjVhMjM0MGU5LTcxMjAtNGFlZC1hNWNhLWZlNzY2OTcwMTY3MCIsInRva2VuX3VzZSI6ImlkIiwiYXV0aF90aW1lIjoxNjc4MDQ0OTkyLCJuYW1lIjoiQ2hhcmxvdHRlIiwicGhvbmVfbnVtYmVyIjoiKzE2MDM2NzQyMjI4IiwiZXhwIjoxNjc4MTMxMzkyLCJpYXQiOjE2NzgwNDQ5OTIsImZhbWlseV9uYW1lIjoiS2llcyIsImVtYWlsIjoiY2hvcGVraWVzQGdtYWlsLmNvbSIsImN1c3RvbTptYXJrZXRpbmdBdXRoIjoiMCJ9.Oy3AGV37tN9fv53BDGiBB_pXFKmL8YVm9yf0z3gh4InTD7S9FTBSxjMWDcWYfgZpXdUu-AEDox7DGAsC-fIfFxcAuj19c7nrg7NX6cbWISqIYy_xAdRx4pIRHVFiMrEUkaEMayD7BkhmtmcrM3O4HIzILJh2bCJ2bnEtY515lIle4Ny6MJbkYK6GbzDG4zreL4V_ue4E3mnJzqWVQEoeO5o6D_eLjIBUswYwYMv2CtSUrV_HjJ7NAhL3Vr5AFxq2uYJIOukfz7WPVJc1VpUOjau8CQI88EhuVUP5Ou9jZCa8A_M0MzXSLPjlecwkeK5x_yLtnulgp5CNVQ-YV8ee9A'

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


# curl - X POST https: // developer.expert.ai/oauth2/token \
#     - H 'Content-Type: application/json; charset=utf-8' \
#     - d '{
#         "username": "chopekies@gmail.com",
#         "password": "3WmSRN.hCf4MYgh"
#     }'

    # translations = [prop["value"]
    #                 for prop in token["lemma"] if prop["type"] == "translation"]
    # print(', '.join(translations))
