package com.example.demo;

import java.util.Collection;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping("/api/characters")
public class CharacterApiController {

    private final CharacterService characterService;

    public CharacterApiController(CharacterService characterService) {
        this.characterService = characterService;
    }



@GetMapping("/")
public ResponseEntity<Collection<Character>> getAllCharacters() {
    return ResponseEntity.ok(characterService.getAllCharacters());
}

@GetMapping("/{id}")
public ResponseEntity<Character> getCharacterById(@PathVariable Long id) {
    Character character = characterService.getCharacterById(id);
    if (character != null) {
        return ResponseEntity.ok(character);
    } else {
        return ResponseEntity.notFound().build();
    }
}

@PostMapping("/")
public ResponseEntity<Character> createCharacter(@RequestBody Character character) {
    Character createdCharacter = characterService.createCharacter(character);
    if (createdCharacter != null) {
        return ResponseEntity.ok(createdCharacter);
    } else {
        return ResponseEntity.notFound().build();
    }
}

@GetMapping("/species/{species}")
public ResponseEntity<Collection<Character>> getCharactersBySpecies(@PathVariable String species) {
    return ResponseEntity.ok(characterService.getCharactersBySpecies(species));
}

@GetMapping("/universe/{universe}")
public ResponseEntity<Collection<Character>> getCharactersByUniverse(@PathVariable String universe) {
    return ResponseEntity.ok(characterService.getCharactersByUniverse(universe));
}

@GetMapping("/search")
public ResponseEntity<Collection<Character>> searchCharactersByName(@RequestParam (required = false) String name) {
    List<Character> characters;
    if (name != null) {
        characters = characterService.searchCharactersByName(name);
    } else {
        characters = characterService.getAllCharacters();
    }
    return ResponseEntity.ok(characters);
}
@PutMapping("/{id}")
public ResponseEntity<Character> updateCharacter(@PathVariable Long id, @RequestBody Character changedCharacter) {
    Character updatedCharacter = characterService.updateCharacter(id, changedCharacter);
    if (updatedCharacter != null) {
        return ResponseEntity.ok(updatedCharacter);
    } else {
        return ResponseEntity.notFound().build();
    }
}

@DeleteMapping("/{id}")
public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {
    characterService.deleteCharacter(id);
    return ResponseEntity.noContent().build();
}
}