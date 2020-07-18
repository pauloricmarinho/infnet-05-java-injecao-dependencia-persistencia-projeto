package br.edu.infnet.emprestimo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.emprestimo.model.Emprestimo;

@Repository
public interface EmprestimoRepository extends JpaRepository<Emprestimo, Long> {

}
