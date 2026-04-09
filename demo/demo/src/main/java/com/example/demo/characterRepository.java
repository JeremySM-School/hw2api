package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {
    List<Character> findByCharactername(String charactername);
    List<Character> findByCharacterspecies(String characterspecies);
    List<Character> findByCharacteruniverse(String characteruniverse);

    @Query("SELECT c FROM Character c WHERE LOWER(c.charactername) LIKE LOWER(CONCAT('%', :name, '%'))")
    List<Character> searchCharactersByName(@Param("name") String name);

    @Query("SELECT c FROM Character c WHERE LOWER(c.characterdescription) LIKE LOWER(CONCAT('%', :description, '%'))")
    List<Character> searchCharactersByDescription(@Param("description") String description);

    @Query("SELECT c FROM Character c WHERE LOWER(c.characteruniverse) LIKE LOWER(CONCAT('%', :universe, '%'))")
    List<Character> searchCharactersByUniverse(@Param("universe") String universe);

    @Query("SELECT c FROM Character c WHERE LOWER(c.characterspecies) LIKE LOWER(CONCAT('%', :species, '%'))")
    List<Character> searchCharactersBySpecies(@Param("species") String species);

    


}
