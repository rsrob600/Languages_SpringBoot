package com.codingdojo.languages.controllers;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.languages.models.Languages;
import com.codingdojo.languages.services.LanguagesService;

@Controller
public class LanguagesController {
private final LanguagesService languagesService;
	
	public LanguagesController(LanguagesService languagesService) {
		this.languagesService = languagesService;
	}

	@RequestMapping("/")
	public String index(Model model, @ModelAttribute("languages") Languages languages) {
		ArrayList<Languages> lang = (ArrayList<Languages>) languagesService.allLanguages();
		model.addAttribute("lang", lang);
		return "/views/index.jsp";
	}

	@RequestMapping("/languages")
	public String home(Model model, @ModelAttribute("languages") Languages languages) {
		ArrayList<Languages> lang = (ArrayList<Languages>) languagesService.allLanguages();
		model.addAttribute("lang", lang);
		return "/views/index.jsp";
	}

	@RequestMapping(value="/languages", method=RequestMethod.POST)
	public String create(@Valid @ModelAttribute("Languages") Languages languages, BindingResult result, RedirectAttributes errors) {
		if(result.hasErrors()) {
			errors.addFlashAttribute("errors", result.getAllErrors());
			return "redirect:/languages";
		} else {
			languagesService.createLanguage(languages);
			return "redirect:/languages";
		}
	}
	
	@RequestMapping(value="/update/{id}", method=RequestMethod.PUT)
	public String update(@Valid @ModelAttribute("languages") Languages languages, BindingResult result, RedirectAttributes errors) {
		if(result.hasErrors()) {
			errors.addFlashAttribute("errors", result.getAllErrors());
			return "/languages/edit.jsp";
		} else  {
			languagesService.updateLanguage(languages);
			return "redirect:/languages";
		}
	}
	
	@RequestMapping("/edit/{id}")
	public String editLang(@PathVariable("id") Long id, Model model) {
		Languages languages = languagesService.findLanguage(id);
		model.addAttribute("languages", languages);
		return "/views/edit.jsp";
	}
	
	@RequestMapping("/show/{id}")
	public String showLang(@PathVariable("id") Long id, Model model) {
		Languages languages = languagesService.findLanguage(id);
		model.addAttribute("languages", languages);
		return "/views/show.jsp";
	}
	
	@RequestMapping(value="/delete/{id}")
	public String destroy(@PathVariable("id") Long id) {
		languagesService.deleteLanguage(id);
		return "redirect:/languages";
	}
	
	
}
