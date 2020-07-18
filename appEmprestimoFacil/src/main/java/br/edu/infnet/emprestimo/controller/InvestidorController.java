package br.edu.infnet.emprestimo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import br.edu.infnet.emprestimo.model.Investidor;
import br.edu.infnet.emprestimo.service.InvestidorService;

@Controller
public class InvestidorController {

	private @Autowired InvestidorService serviceInvestidor;
	
	@GetMapping("/investidores")
	public String listar(Model model) {
		List<Investidor> investidores = serviceInvestidor.listar();
		model.addAttribute("investidores",investidores);
		return "investidor/lista-investidor";
	}
	
	
}
