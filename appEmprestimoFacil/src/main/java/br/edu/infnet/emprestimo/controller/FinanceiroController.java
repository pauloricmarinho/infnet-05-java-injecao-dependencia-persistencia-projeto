package br.edu.infnet.emprestimo.controller;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.emprestimo.model.Cliente;
import br.edu.infnet.emprestimo.service.ClienteService;
import br.edu.infnet.emprestimo.service.ParcelaService;

@Controller
public class FinanceiroController {
	
	private @Autowired ClienteService serviceCliente;
	
	private @Autowired ParcelaService serviceParcela;
	
	@GetMapping("/balanco-financeiro")
	public String listar(Model model) {
		return "financeiro/lista-financeiro";
	}
	
	@GetMapping("/pagamentos/cliente/{id}")
	public String debitos(Model model,@PathVariable("id") Long id) {
		Cliente cliente = serviceCliente.buscar(id);
		
		model.addAttribute("cliente",cliente);
		return "financeiro/lista-emprestimo-cliente";
	}
	
	@GetMapping("/pagamentos/cliente/{id}/parcela/{parcela}")
	public String operacaoParcela(Model model,@PathVariable("id") Long id, @PathVariable("parcela") Long parcela, @PathParam("op") String operacao) {
		
		if(operacao.equals("PAGAR")) {
			serviceParcela.pagar(parcela);
		}else {
			serviceParcela.cancelar(parcela);
		}
		
		Cliente cliente = serviceCliente.buscar(id);
		
		model.addAttribute("cliente",cliente);
		return "financeiro/lista-emprestimo-cliente";
	}
	
	
}
