package com.example.demo;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CharacterService {

    private final CharacterRepository characterRepository;

    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }

    public Character getCharacterById(Long id) {
        return characterRepository.findById(id).orElse(null);
    }

    public Character createCharacter(Character character) {
        return characterRepository.save(character);
    }

    public void addCharacter(Character character) {
    characterRepository.save(character);
}

    public List<Character> searchCharactersByName(String name) {
       return characterRepository.searchCharactersByName(name);
    }

    public List<Character> getCharactersBySpecies(String species) {
        return characterRepository.findByCharacterspecies(species);
    }

    public List<Character> getCharactersByUniverse(String universe) {
        return characterRepository.findByCharacteruniverse(universe);
    }

    public Character updateCharacter(Long id, Character updatedCharacter) {
        return characterRepository.findById(id)
                .map(character -> {
                    character.setCharactername(updatedCharacter.getCharactername());
                    character.setCharacterdescription(updatedCharacter.getCharacterdescription());
                    character.setCharacteruniverse(updatedCharacter.getCharacteruniverse());
                    character.setCharacterspecies(updatedCharacter.getCharacterspecies());
                    return characterRepository.save(character);
                })
                .orElse(null);
    }

    public void deleteCharacter(Long id) {
        characterRepository.deleteById(id);
    }
}