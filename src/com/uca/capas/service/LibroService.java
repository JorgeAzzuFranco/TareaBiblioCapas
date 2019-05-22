package com.uca.capas.service;

import java.math.BigInteger;
import java.util.List;

import com.uca.capas.domain.Libro;

import org.springframework.dao.DataAccessException;

public interface LibroService {

	public List<Libro> findAll() throws DataAccessException;
	public List<Libro> findSome(String code, String type) throws DataAccessException;
	public BigInteger count() throws DataAccessException;
}
