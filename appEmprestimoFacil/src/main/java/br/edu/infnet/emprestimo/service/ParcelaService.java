package br.edu.infnet.emprestimo.service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.emprestimo.model.Cliente;
import br.edu.infnet.emprestimo.model.Investidor;
import br.edu.infnet.emprestimo.model.Parcela;
import br.edu.infnet.emprestimo.repository.ClienteRepository;
import br.edu.infnet.emprestimo.repository.InvestidorRepository;
import br.edu.infnet.emprestimo.repository.ParcelaRepository;

@Service
public class ParcelaService {

	private @Autowired ParcelaRepository repo;
	
	private @Autowired ClienteRepository repositoryCliente;
	
	private @Autowired InvestidorRepository respositoryInvestidor;

	public void salvar(List<Parcela> parcelas) {
		for (Parcela parcela : parcelas) {
			repo.save(parcela);
		}
	}

	public Parcela salvar(Parcela parcela) {
		return repo.save(parcela);
	}

	public Parcela buscar(Long id) {
		return repo.findById(id).get();
	}

	public Parcela cancelar(Long id) {
		
		Parcela parcela = buscar(id);
		parcela.cancelar();
		parcela.setQuitacao(null);
		
		// Atualizar Saldo Cliente
		Cliente c = repositoryCliente.findById(parcela.getEmprestimo().getCliente().getId()).get();
		Double saldo = c.getSaldo() + parcela.getValor();
		c.setSaldo(saldo);
		repositoryCliente.save(c);
		
		// Atualizar Saldo Investidor
		Investidor inv =  respositoryInvestidor.findById(parcela.getEmprestimo().getInvestidor().getId()).get();
		Double saldoInvs = inv.getSaldo() - parcela.getValor();
		inv.setSaldo(saldoInvs);
		respositoryInvestidor.save(inv);
		
		
		return salvar(parcela); 
		
	}

	public Parcela pagar(Long id) {

		Parcela parcela = buscar(id);
		parcela.pagar();
		parcela.setQuitacao(getDate());
		
		// Atualizar Saldo Cliente
		Cliente c = repositoryCliente.findById(parcela.getEmprestimo().getCliente().getId()).get();
		Double saldo = c.getSaldo() - parcela.getValor();
		c.setSaldo(saldo);
		repositoryCliente.save(c);
		
		// Atualizar Saldo Investidor
		Investidor inv =  respositoryInvestidor.findById(parcela.getEmprestimo().getInvestidor().getId()).get();
		Double saldoInvs = inv.getSaldo() + parcela.getValor();
		inv.setSaldo(saldoInvs);
		respositoryInvestidor.save(inv);
		
		return salvar(parcela);
	}
	
	public Date getDate() {
		Calendar calendar = Calendar.getInstance();
		return calendar.getTime();
	}

}
