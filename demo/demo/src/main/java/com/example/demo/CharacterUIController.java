package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/characters")
public class CharacterUIController {

    private final CharacterService characterService;

    public CharacterUIController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/all")
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        return "character-list"; 
    }

    @GetMapping("/details/{id}")
    public String getCharacterById(@PathVariable Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        if (character != null) {
            model.addAttribute("character", character);
            return "character-details"; 
        }
        return "about"; 
    }

    @GetMapping("/add")
    public String showForm(Model model) {
        model.addAttribute("character", new Character());
        return "new-character-form";
    }

@GetMapping("/about")
public String showAboutPage() {
    return "about"; 
}

@GetMapping("/search")
public String searchCharacters(@RequestParam("query") String query, Model model) {
    model.addAttribute("characterList", characterService.searchCharactersByName(query));
    return "character-list"; 
}

@PostMapping("/save")
public String saveCharacter(Character character) {
    
    characterService.addCharacter(character);
    
    
    return "redirect:/characters/all";
}

@GetMapping("/delete/{id}")
public String deleteCharacter(@PathVariable Long id) {
    characterService.deleteCharacter(id);
    return "redirect:/characters/all";
}

}