package br.edu.infnet.emprestimo.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="tbl_parcela")
public class Parcela {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(columnDefinition="Decimal(10,2) default '0.00'")
	private Double valor;
	
	private Integer numero;
	
	@Column(nullable=false, columnDefinition = "datetime")
	private Date vencimento;

	@Column(columnDefinition = "datetime")
	private Date quitacao;
	
	private Boolean pago = false;
	
	@ManyToOne(cascade = {CascadeType.ALL}, fetch = FetchType.EAGER)
	@JoinColumn(name="emprestimo_id", nullable = false)
	private Emprestimo emprestimo;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public Integer getNumero() {
		return numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	public Date getVencimento() {
		return vencimento;
	}

	public void setVencimento(Date vencimento) {
		this.vencimento = vencimento;
	}

	public Date getQuitacao() {
		return quitacao;
	}

	public void setQuitacao(Date quitacao) {
		this.quitacao = quitacao;
	}

	public Boolean getPago() {
		return pago;
	}

	public void pagar() {
		this.pago = true;
	}
	
	public void cancelar() {
		this.pago = false;
	}

	public Emprestimo getEmprestimo() {
		return emprestimo;
	}

	public void setEmprestimo(Emprestimo emprestimo) {
		this.emprestimo = emprestimo;
	}

}
