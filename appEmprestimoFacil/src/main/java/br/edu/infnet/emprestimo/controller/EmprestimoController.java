package br.edu.infnet.emprestimo.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.emprestimo.model.Cliente;
import br.edu.infnet.emprestimo.model.Emprestimo;
import br.edu.infnet.emprestimo.model.Investidor;
import br.edu.infnet.emprestimo.model.Parcela;
import br.edu.infnet.emprestimo.service.ClienteService;
import br.edu.infnet.emprestimo.service.EmprestimoService;
import br.edu.infnet.emprestimo.service.InvestidorService;
import br.edu.infnet.emprestimo.service.ParcelaService;

@Controller
public class EmprestimoController {
	
	private @Autowired ClienteService servCliente;
	
	private @Autowired InvestidorService servInvestidor;
	
	private @Autowired EmprestimoService servEmprestimo;
	
	private @Autowired ParcelaService servParcela;
	
	static List<Parcela> parcelas = new ArrayList<Parcela>();

	@GetMapping("/emprestimos/novo")
	public String listar(Model model, @PathParam("clienteID") Long clienteID, @PathParam("investidorID") Long investidorID) {
		
		List<Cliente> clientes = servCliente.listar();
		List<Investidor> investidores = servInvestidor.listar();
		
		if(clienteID!=null) {
			model.addAttribute("cliente",servCliente.buscar(clienteID));
			model.addAttribute("investidor",servInvestidor.buscar(investidorID));
		}
		
		model.addAttribute("clientes",clientes);
		model.addAttribute("investidores",investidores);
		
		return "emprestimo/form-emprestimo";
	}
	
	@PostMapping("/emprestimos/parcelas")
	public String parcelamento(Model model, Emprestimo emprestimo) {
	
		montarParcelas(emprestimo);
		
		model.addAttribute("cliente",servCliente.buscar(emprestimo.getCliente().getId()));
		model.addAttribute("investidor",servInvestidor.buscar(emprestimo.getInvestidor().getId()));
		model.addAttribute("parcelas",parcelas);

		return "emprestimo/form-parcelas";
	}
	
	@PostMapping("/emprestimos/confirmar")
	public String confirmar(Model model, Emprestimo emprestimo) {
	
		model.addAttribute("cliente",servCliente.buscar(emprestimo.getCliente().getId()));
		model.addAttribute("investidor",servInvestidor.buscar(emprestimo.getInvestidor().getId()));
		model.addAttribute("parcelas",parcelas);
		
		montarParcelas(emprestimo);
		servEmprestimo.salvar(emprestimo);
		servParcela.salvar(parcelas);

		model.addAttribute("mensagem","Plano Contratado com Sucesso! N° : " + emprestimo.getId());

		return "redirect:/emprestimos/lista/"+emprestimo.getId();
	}
	
	@GetMapping("emprestimos/lista/{id}")
	public String detalhar(Model model, @PathVariable Long id) {
	
		
		Emprestimo emprestimo = servEmprestimo.buscar(id);
		
		model.addAttribute("mensagem","Plano Contratado com Sucesso! N° : " + emprestimo.getId());
		model.addAttribute("emprestimo", emprestimo);

		return "emprestimo/lista-emprestimo";
	}
	
	@GetMapping("emprestimos/pagar/{id}")
	public String pagarParcela(Model model, @PathVariable Long id) {
	
		Parcela parcela = servParcela.pagar(id);
		
		Emprestimo emprestimo = servEmprestimo.buscar(parcela.getEmprestimo().getId());
		model.addAttribute("emprestimo", emprestimo);

		return "emprestimo/lista-emprestimo";
	}
	
	@GetMapping("emprestimos/cancelar/{id}")
	public String cancelaParcela(Model model, @PathVariable Long id) {
	
		Parcela parcela = servParcela.cancelar(id);
		
		Emprestimo emprestimo = servEmprestimo.buscar(parcela.getEmprestimo().getId());
		model.addAttribute("emprestimo", emprestimo);
		
		return "emprestimo/lista-emprestimo";
	}
	
	
	public void montarParcelas(Emprestimo emprestimo) {		
		int x = 1;
		parcelas.clear();
		while(x <= emprestimo.getNumeroParcelas()) {
			Parcela p = new Parcela();
			Calendar calendar = Calendar.getInstance();
			calendar.add(Calendar.DAY_OF_MONTH, 30 * x);
			p.setNumero(x);
			p.setVencimento(calendar.getTime());
			p.setValor(emprestimo.getValor() / emprestimo.getNumeroParcelas());
			p.setEmprestimo(emprestimo);
			parcelas.add(p);
			x++;
		}		
	}
	
	
	
}
