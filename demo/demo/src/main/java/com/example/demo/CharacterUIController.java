package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/characters")
public class CharacterUIController {

    @Autowired
    private CharacterService characterService;


    @GetMapping("/about")
    public String about(){
        return "about";
    }

    @GetMapping("/{id}")
public String getCharacterById(@PathVariable Long id, Model model) {
    Character character = characterService.getCharacterById(id);
    model.addAttribute("character", character);
    if (character != null) {
        return "character-details"; 
    } else {
        return "about";
    }
}

@GetMapping("/add")
public String showForm(){
    return "new-character-form";
}

@GetMapping("/all")
public String getAllCharacters(Model model){
    model.addAttribute("characterList", characterService.getAllCharacters());
    return "character-list";
}
}
