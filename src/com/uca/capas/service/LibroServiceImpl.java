package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.uca.capas.daos.LibroDAO;
import com.uca.capas.domain.Libro;

@Service
public class LibroServiceImpl implements LibroService{
	
	@Autowired
	LibroDAO libroDao;

	@Override
	public List<Libro> findAll() throws DataAccessException {
		List<Libro> resultSet = libroDao.findAll();
		return resultSet;
	}

	@Override
	public List<Libro> findSome(String code, String type) throws DataAccessException {
		List<Libro> resultSet = libroDao.findSome(code, type);
		return resultSet;
	}

}
