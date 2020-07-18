package br.edu.infnet.emprestimo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InvestidorController {

	@GetMapping("/investidores")
	public String listar(Model model) {
		return "investidor/lista-investidor";
	}
}
