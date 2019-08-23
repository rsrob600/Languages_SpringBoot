package com.codingdojo.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.languages.models.Languages;
import com.codingdojo.languages.repositories.LanguagesRepository;

@Service
public class LanguagesService {
	private final LanguagesRepository languagesRepository;
	
	public LanguagesService(LanguagesRepository languagesRepository) {
		this.languagesRepository = languagesRepository;
	}
	
	// returns all the language records
	public List<Languages> allLanguages(){
		return languagesRepository.findAll();
	}
	
	// creates a language record
	public Languages createLanguage(Languages l) {
		return languagesRepository.save(l);
	}
	
	// retrieves a language record
	public Languages findLanguage(Long id) {
		Optional<Languages> optionalLang = languagesRepository.findById(id);
		if(optionalLang.isPresent()) {
			return optionalLang.get();
		} else {
			return null;
		}
	}
	
	// updates a language record
	public Languages updateLanguage(Languages l) {
		return languagesRepository.save(l);
	}
	
	// deletes a language record
	public void deleteLanguage(Long id) {
		languagesRepository.deleteById(id);;
	}
	
	
}
