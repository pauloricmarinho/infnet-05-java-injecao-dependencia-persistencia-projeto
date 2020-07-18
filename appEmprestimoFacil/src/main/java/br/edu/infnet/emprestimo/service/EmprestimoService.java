package br.edu.infnet.emprestimo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.edu.infnet.emprestimo.model.Cliente;
import br.edu.infnet.emprestimo.model.Emprestimo;
import br.edu.infnet.emprestimo.model.Investidor;
import br.edu.infnet.emprestimo.repository.ClienteRepository;
import br.edu.infnet.emprestimo.repository.EmprestimoRepository;
import br.edu.infnet.emprestimo.repository.InvestidorRepository;

@Service
public class EmprestimoService {
	
	private @Autowired EmprestimoRepository emprestimoRepository;
	
	private @Autowired ClienteRepository clienteRepository;
	
	private @Autowired InvestidorRepository investidorRepository;

	@Transactional
	public Emprestimo salvar(Emprestimo emprestimo) {
	
		// Atualizar Saldo Cliente
		Cliente cliente = clienteRepository.findById(emprestimo.getCliente().getId()).get();
		Double saldoCliente = cliente.getSaldo();
		saldoCliente += emprestimo.getValor();
		cliente.setSaldo(saldoCliente);
		clienteRepository.save(cliente);
		
		// Atualizar Dados Investidor
		Investidor investidor = investidorRepository.findById(emprestimo.getInvestidor().getId()).get();
		Double valorSaldo = investidor.getSaldo();
		valorSaldo -= emprestimo.getValorBase();
		investidor.setSaldo(valorSaldo);
		investidorRepository.save(investidor);
		
		
		return emprestimoRepository.save(emprestimo);
		
	}

	public Emprestimo buscar(Long id) {
		// TODO Auto-generated method stub
		return emprestimoRepository.findById(id).get();
	}

}
