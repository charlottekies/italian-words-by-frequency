package com.kies.italianfrequency.Model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.Id;
import javax.persistence.Table;
import jakarta.persistence.Entity;

import jakarta.persistence.Transient;
import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import java.util.List;
import java.util.Map;

@Data
@Entity(name = "word")
@Table(name = "word")
@DynamicUpdate
public class Word {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "word_id")
    private long word_id;

    @JsonProperty
    @Column(name = "word")
    private String word;

    @JsonProperty
    @Column(name = "frequency")
    private int frequency;

    @JsonProperty
    @Column(name = "translation")
    private String translation;

    public Word() {
        super();
    }

}
