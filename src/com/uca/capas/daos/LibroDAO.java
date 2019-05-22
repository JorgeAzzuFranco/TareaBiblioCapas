package com.uca.capas.daos;

import java.math.BigInteger;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Libro;

public interface LibroDAO {
	List<Libro> findAll() throws DataAccessException;
	List<Libro> findSome(String code, String type) throws DataAccessException;
	BigInteger count() throws DataAccessException;
	
}
