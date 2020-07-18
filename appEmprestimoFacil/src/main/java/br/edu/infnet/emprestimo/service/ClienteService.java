package br.edu.infnet.emprestimo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.emprestimo.model.Cliente;
import br.edu.infnet.emprestimo.repository.ClienteRepository;

@Service
public class ClienteService {

	private @Autowired ClienteRepository repo;
	
	public List<Cliente> listar() {
		return repo.findAll();
	}
	
	public Cliente salvar(Cliente cliente) {
		return repo.save(cliente);
	}

	public Cliente buscar(Long id) {
		return repo.findById(id).get();
	}

	public void remover(Cliente cliente) {
		
		// Exclusão Lógica
		if(cliente.getEmprestimos().size() > 0){
			cliente.desativar();
			salvar(cliente);
		}else {
			repo.delete(cliente);			
		}
		
	}
}
