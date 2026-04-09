package com.example.demo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "characters")
public class Character {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "characterid") 
    private Long characterid;


    @Column(name = "charactername", nullable = false)
    private String charactername;

    @Column(name = "characterdescription", nullable = false)
    private String characterdescription;

    @Column(name = "characteruniverse", nullable = false)
    private String characteruniverse;

    @Column(name = "characterspecies", nullable = false)
    private String characterspecies;

    @Column(name = "characterimageurl", nullable = true)
    private String characterimageurl;
    public Character() {

}

    public Character(String charactername, String characterdescription, String characteruniverse, String characterspecies) {
        this.charactername = charactername;
        this.characterdescription = characterdescription;
        this.characteruniverse = characteruniverse;
        this.characterspecies = characterspecies;
        this.characterimageurl = characterimageurl;
    }

    public Character(Long characterid, String charactername, String characterdescription, String characteruniverse, String characterspecies) {
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

    public String getCharacterimageurl() {
    return characterimageurl;
}

public void setCharacterimageurl(String characterimageurl) {
    this.characterimageurl = characterimageurl;
}
}