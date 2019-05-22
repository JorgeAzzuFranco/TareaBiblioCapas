package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(schema = "public", name = "cliente")
public class Libro {
	@Id
	@GeneratedValue(generator="public.libro_id_libro_seq", strategy = GenerationType.AUTO)
	@SequenceGenerator(name = "libro_id_libro_seq", sequenceName = "public.libro_id_libro_seq", allocationSize = 1)
	@Column(name = "id_libro")
	Integer idLibro;
	
	@Column(name="isbn")
	String isbn;
	
	@Column(name="titulo")
	String titulo;
	
	@Column(name="autor")
	String autor;
	
	@Column(name="genero")
	String genero;
	
	@Column(name="existencia")
	Integer existencia;
	
	//Constructores
	
	public Libro() {
		
	}
			
	public Libro(Integer idLibro, String isbn, String titulo, String autor, Integer existencia) {
		super();
		this.idLibro = idLibro;
		this.isbn = isbn;
		this.titulo = titulo;
		this.autor = autor;
		this.existencia = existencia;
	}

	//Setters y getters
	
	public Integer getIdLibro() {
		return idLibro;
	}

	public void setIdLibro(Integer idLibro) {
		this.idLibro = idLibro;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public Integer getExistencia() {
		return existencia;
	}

	public void setExistencia(Integer existencia) {
		this.existencia = existencia;
	}
	
}
