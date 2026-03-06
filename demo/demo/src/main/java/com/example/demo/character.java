package com.example.demo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "characters")
public class character {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterid;

    @Column(nullable = false)
    private String charactername;

    @Column(nullable = false)
    private String characterdescription;

    @Column(nullable = false)
    private String characteruniverse;

    @Column(nullable = false)
    private String characterspecies;

    public character() {

}

    public character(String charactername, String characterdescription, String characteruniverse, String characterspecies) {
        this.charactername = charactername;
        this.characterdescription = characterdescription;
        this.characteruniverse = characteruniverse;
        this.characterspecies = characterspecies;
    }

    public character(Long characterid, String charactername, String characterdescription, String characteruniverse, String characterspecies) {
        this.characterid = characterid;
        this.charactername = charactername;
        this.characterdescription = characterdescription;
        this.characteruniverse = characteruniverse;
        this.characterspecies = characterspecies;
    }

    public Long getCharacterid() {
        return characterid;
    }

    public void setCharacterid(Long characterid) {
        this.characterid = characterid;
    }
    
    public String getCharactername() {
        return charactername;
    }

    public void setCharactername(String charactername) {
        this.charactername = charactername;
    }

    public String getCharacterdescription() {
        return characterdescription;
    }

    public void setCharacterdescription(String characterdescription) {
        this.characterdescription = characterdescription;
    }

    public String getCharacteruniverse() {
        return characteruniverse;
    }

    public void setCharacteruniverse(String characteruniverse) {
        this.characteruniverse = characteruniverse;
    }

    public String getCharacterspecies() {
        return characterspecies;
    }

    public void setCharacterspecies(String characterspecies) {
        this.characterspecies = characterspecies;
    }
}