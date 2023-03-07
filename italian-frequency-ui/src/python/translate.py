# import spacy
# from googletrans import Translator
# from googletrans import LANGUAGES
# translator = Translator(service_urls=['translate.google.cn'])


# # Load the IT language model
# nlp = spacy.load('it_core_news_sm')

# # Define a function to translate a word to Spanish and retrieve its parts of speech


# def translate_word(word):
#     # Translate the word to English
#     translator = Translator(service_urls=['translate.google.com'])
#     translation = translator.translate(word, dest='en').text

#     # Parse the Spanish text to retrieve the parts of speech
#     doc = nlp(translation)
#     pos = [token.pos_ for token in doc]

#     # Return the translated word and its parts of speech
#     return {'word': word, 'translation': translation, 'pos': pos}


# # Define a list of words to translate
# words = ['ciao', 'sono', 'macchina']

# # Translate each word and print out the results
# for word in words:
#     result = translate_word(word)
#     print(f"Word: {result['word']}")
#     print(f"Translation: {result['translation']}")
#     print(f"Parts of Speech: {result['pos']}")
#     print()

import time
from googletrans import Translator
import spacy

# Load the Italian language model
nlp_it = spacy.load('it_core_news_sm')
nlp_en = spacy.load('en_core_web_sm')


# Define a function to translate a word to English and retrieve its parts of speech using Google Translate API and spaCy


def translate_word(word):
    # Translate the word to English using Google Translate API
    translator = Translator(service_urls=['translate.google.com'])
    translation = translator.translate(word, dest='en')

    # Parse the English text to retrieve the parts of speech
    doc_en = nlp_en(translation.text)
    pos_list = [token.pos_ for token in doc_en]

    # Return the word, translation, and parts of speech
    return {'word': word, 'translation': translation.text, 'pos': pos_list}


# Define a list of words to translate
words = ['ciao', 'sono', 'macchina']

# Translate each word using Google Translate API and spaCy, and print out the results
for word in words:
    result = translate_word(word)
    print(f"Word: {result['word']}")
    print(f"Translation: {result['translation']}")
    print(f"Parts of Speech: {result['pos']}")
    print()
    time.sleep(1)  # Avoid exceeding the API request rate limit
