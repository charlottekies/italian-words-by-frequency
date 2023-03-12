package com.kies.italianfrequency.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.kies.italianfrequency.Repository.WordRepository;
import com.kies.italianfrequency.Model.Word;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import java.util.List;
@Component
public class WordServiceImpl {

    private static final Logger log = LoggerFactory.getLogger(WordRepository.class);
    private static final Logger logger = LoggerFactory.getLogger(WordRepository.class);
    private static final ObjectMapper mapper = new ObjectMapper();


    //...

    @Autowired
    private WordRepository wordRepository;

    public List<Word> findByWord(String word) {
        List<Word> words = wordRepository.findByWord(word);

        log.debug("Found {} words: {}", words.size(), words);

        for (Word foundWord : words) {
            try {
                String json = mapper.writeValueAsString(foundWord);
                logger.debug("Retrieved word from DB: {}", json);
            } catch (JsonProcessingException e) {
                logger.error("Error serializing word to JSON", e);
            }
        }
        return words;
    }

    public List<Word> findAll() {
        List<Word> words = wordRepository.findAll();
        log.debug("Found {} words: {}", words.size(), words);

        for (Word word : words) {
            try {
                String json = mapper.writeValueAsString(word);
                logger.debug("Retrieved word from DB: {}", json);
            } catch (JsonProcessingException e) {
                logger.error("Error serializing word to JSON", e);
            }
        }
    return words;
    }

}
