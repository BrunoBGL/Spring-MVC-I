package br.com.casadocodigo.loja.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.casadocodigo.loja.models.Produto;

@Repository
@org.springframework.transaction.annotation.Transactional
public class ProdutoDAO {

	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Produto produto) {
		manager.persist(produto);
	}

	public List<Produto> listar() {
		return manager.createQuery("select p from Produto p" ,Produto.class).getResultList();
	}

	public Produto find(int id) {
		return manager.createQuery("SELECT DISTINCT(p) FROM Produto p "
				+ "JOIN FETCH p.precos precos WHERE p.id = :id", Produto.class).setParameter("id", id).getSingleResult();

	}
}
