package br.edu.infnet.emprestimo.model;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name="tbl_emprestimo")
public class Emprestimo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="investidor_id", nullable = false)
	private Investidor investidor;
	
	@ManyToOne
	@JoinColumn(name="cliente_id", nullable = false)
	private Cliente cliente;
	
	private Double valorBase;
	
	private Double valor;
	
	private Integer numeroParcelas;
	
	@UpdateTimestamp  // Atualiza a Data sempre que a Entidade for Atualizada.
	@Column(nullable=false, columnDefinition = "datetime")
	private LocalDateTime dataMovimento;
	
	@OneToMany(mappedBy = "emprestimo", cascade = {CascadeType.ALL}, fetch = FetchType.EAGER)
	private List<Parcela> parcelas = new ArrayList<Parcela>();
	
	
	@UpdateTimestamp
	@Column(nullable=false, columnDefinition = "datetime")
	private LocalDateTime dataAtualizacao;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Investidor getInvestidor() {
		return investidor;
	}

	public void setInvestidor(Investidor investidor) {
		this.investidor = investidor;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public LocalDateTime getDataMovimento() {
		return dataMovimento;
	}

	public void setDataMovimento(LocalDateTime dataMovimento) {
		this.dataMovimento = dataMovimento;
	}

	public List<Parcela> getParcelas() {
		return parcelas;
	}

	public void setParcelas(List<Parcela> parcelas) {
		this.parcelas = parcelas;
	}

	public LocalDateTime getDataAtualizacao() {
		return dataAtualizacao;
	}

	public void setDataAtualizacao(LocalDateTime dataAtualizacao) {
		this.dataAtualizacao = dataAtualizacao;
	}

	public Integer getNumeroParcelas() {
		return numeroParcelas;
	}

	public void setNumeroParcelas(Integer numeroParcelas) {
		this.numeroParcelas = numeroParcelas;
	}

	public Double getValorBase() {
		return valorBase;
	}

	public void setValorBase(Double valorBase) {
		this.valorBase = valorBase;
	}
	
	

}
