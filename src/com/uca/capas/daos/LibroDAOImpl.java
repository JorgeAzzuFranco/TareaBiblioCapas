package com.uca.capas.daos;

import java.math.BigInteger;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Libro;

@Repository
public class LibroDAOImpl implements LibroDAO {

	@PersistenceContext(unitName="capas")
	private EntityManager em;
	
	@Override
	public List<Libro> findAll() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT * FROM public.libro");
		Query query = em.createNativeQuery(sb.toString(), Libro.class);
		List<Libro> resultSet = query.getResultList();
		return resultSet;
	}

	@Override
	public List<Libro> findSome(String code, String type) throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		Query query = null;
		
		switch(type) {
			case "1":
				sb.append("SELECT * FROM LIBRO WHERE AUTOR ILIKE '%' || :au || '%'");
				query = em.createNativeQuery(sb.toString(), Libro.class);
				query.setParameter("au", code);
				break;
			case "2":
				sb.append("SELECT * FROM LIBRO WHERE ISBN = :isbn");
				query = em.createNativeQuery(sb.toString(), Libro.class);
				query.setParameter("isbn", code);
				break;
			case "3":
				sb.append("SELECT * FROM LIBRO WHERE GENERO ILIKE '%' || :genero || '%'");
				query = em.createNativeQuery(sb.toString(), Libro.class);
				query.setParameter("genero", code);
				break;
		}
		
		@SuppressWarnings(value = {"all"})
		List<Libro> resultSet = query.getResultList();
		
		return resultSet;
	}

	@Override
	public BigInteger count() throws DataAccessException {
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT COUNT(DISTINCT AUTOR) FROM public.libro;");
		Query query = em.createNativeQuery(sb.toString());
		BigInteger n = (BigInteger) query.getSingleResult();
		return n;
	}

}
