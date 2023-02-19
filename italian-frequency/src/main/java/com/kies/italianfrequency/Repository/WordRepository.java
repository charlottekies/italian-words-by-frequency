package com.kies.italianfrequency.Repository;

import com.kies.italianfrequency.Model.Word;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.Temporal;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.persistence.TemporalType;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;
import java.util.List;

@Repository
public interface WordRepository extends JpaRepository<Word, Long> {

    List<Word> findByWord(String word);

}
