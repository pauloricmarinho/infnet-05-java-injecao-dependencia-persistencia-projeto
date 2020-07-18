package br.edu.infnet.emprestimo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.emprestimo.model.Cliente;
import br.edu.infnet.emprestimo.service.ClienteService;


@Controller
public class ClienteController {

	private @Autowired ClienteService service;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("msg","Bem Vindo!");
		return "/home";
	}

	@GetMapping("/clientes")
	public String listar(Model model) {
		List<Cliente> clientes = service.listar();
		model.addAttribute("clientes",clientes);
		return "/cliente/lista-cliente";
	}
	
	@GetMapping("/clientes/novo")
	public String novo(Model model) {
		model.addAttribute("msg","Bem Vindo!");
		return "/cliente/form-cliente";
	}
	
	@PostMapping("/clientes/salvar")
	public String salvarAluno(Model model, Cliente cliente) {
		service.salvar(cliente);
		return "redirect:/clientes";
	}
	
	@GetMapping("/clientes/editar/{id}")
	public String atualizar(Model model,@PathVariable("id") Long id) {
		Cliente cliente = service.buscar(id);
		model.addAttribute("cliente",cliente);
		return "cliente/edit-cliente";
	}
	
	@GetMapping("/clientes/excluir/{id}")
	public String remover(Model model,@PathVariable("id") Long id) {
		Cliente cliente = service.buscar(id);
		service.remover(cliente);
		return "redirect:/clientes";
	}

}
