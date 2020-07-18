package br.edu.infnet.emprestimo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.emprestimo.model.Investidor;
import br.edu.infnet.emprestimo.repository.InvestidorRepository;

@Service
public class InvestidorService {

	private @Autowired InvestidorRepository repo;
	
	public List<Investidor> listar(){
		return repo.findAll();
	}

	public Investidor buscar(Long id) {
		return repo.findById(id).get();
	}
}
