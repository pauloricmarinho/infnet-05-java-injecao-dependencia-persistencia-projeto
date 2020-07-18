package br.edu.infnet.emprestimo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.emprestimo.model.Investidor;

@Repository
public interface InvestidorRepository  extends JpaRepository<Investidor, Long> {

}
