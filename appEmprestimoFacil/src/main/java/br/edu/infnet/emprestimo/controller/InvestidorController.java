package br.edu.infnet.emprestimo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.emprestimo.model.Investidor;
import br.edu.infnet.emprestimo.service.InvestidorService;

@Controller
public class InvestidorController {

	private @Autowired InvestidorService serviceInvestidor;
	
	@GetMapping("/investidores")
	public String listar(Model model) {
		List<Investidor> investidores = serviceInvestidor.listar();
		model.addAttribute("investidores",investidores);
		return "/investidor/lista-investidor";
	}
	
	@GetMapping("/investidores/novo")
	public String novo(Model model) {
		return "/investidor/form-investidor";
	}
	
	@PostMapping("/investidores/salvar")
	public String salvar(Model model, Investidor invest) {
		serviceInvestidor.salvar(invest);
		return "redirect:/investidores";
	}
	
	@GetMapping("/investidores/editar/{id}")
	public String atualizar(Model model,@PathVariable("id") Long id) {
		Investidor invest = serviceInvestidor.buscar(id);
		model.addAttribute("invest",invest);
		return "investidor/edit-invest";
	}
	
	@GetMapping("/investidores/excluir/{id}")
	public String remover(Model model,@PathVariable("id") Long id) {
		Investidor invest = serviceInvestidor.buscar(id);
		serviceInvestidor.remover(invest);
		return "redirect:/investidores";
	}
}
