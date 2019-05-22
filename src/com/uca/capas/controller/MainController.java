package com.uca.capas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Libro;
import com.uca.capas.service.LibroService;

@Controller
public class MainController {
	
	@Autowired
	private LibroService libroService;
	
	@RequestMapping("/")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		
		return mav;
	}
	
	@RequestMapping("/buscar")
	public ModelAndView buscar(String code, String type) {
		ModelAndView mav = new ModelAndView();
		List<Libro> libros = null;
		System.out.println(type);
		try {
			libros = libroService.findSome(code, type);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		int num = libros.size();
		String tipo = "";
		
		switch(type){
			case "1":
				tipo = "Autor";
				break;
			case "2":
				tipo = "ISBN";
				break;
			case "3":
				tipo = "G&eacute;nero";
				break;
		}
		
		String titulo= "Se han encontrado " + num + 
		" resultados con la busqueda de " + tipo + ": " + code;
		
		mav.addObject("titulo", titulo);
		mav.addObject("lib", libros);
		mav.setViewName("result");
		
		return mav;
	}
	
	@RequestMapping("/verTodos")
	public ModelAndView verTodos() {
		ModelAndView mav = new ModelAndView();
		List<Libro> libros = null;
		
		try {
			libros = libroService.findAll();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		int num = libros.size();
		
		String titulo = "Se han encontrado " + num + 
		" resultados en todos";
		
		mav.addObject("titulo", titulo);
		mav.addObject("lib", libros);
		mav.setViewName("result");
		
		return mav;
	}
}
