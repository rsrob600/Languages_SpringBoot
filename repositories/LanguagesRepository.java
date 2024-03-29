package com.codingdojo.languages.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.languages.models.Languages;

@Repository
public interface LanguagesRepository extends CrudRepository<Languages, Long> {
	// this method retrieves all the languages from the database copy
	List<Languages> findAll();
}
