package com.kies.italianfrequency.Controller;

import com.kies.italianfrequency.Model.Word;
import com.kies.italianfrequency.Service.WordServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/")
public class Controller {

    @Autowired
    private WordServiceImpl wordService;

    @GetMapping("word/{word}")
    @ResponseBody
    public List<Word> getWord(@PathVariable String word) {
        return wordService.findByWord(word);
    }

    @GetMapping("/word")
    @ResponseBody
    public List<Word> getAllWords() {
        return wordService.findAll();
    }


}
