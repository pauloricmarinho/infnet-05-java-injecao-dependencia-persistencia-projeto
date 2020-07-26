
var validaForm = function() {
  $("#cadastro, #alteracao, #valores").validate({
    rules: {    
    	nome: {
        required: true,
        minlength: 3
      	},
        cpf: {
        required: true
      	},
      	cep: {
        required: true
      	},
      	nascimento: {
        required: true
      	},
      	telefone: {
        required: true
      	},
      	razaoSocial: {
        required: true,
        minlength: 5
      	}, 
      	cnpj: {
        required: true
      	},
      	valorBase: {
        required: true
      	},
      	cliente: {
        required: true
      	},
    },
    messages: {
      nome: {
        required: "Informe o Nome do Cliente",
        minlength: "O Nome Informado Deve Conter no Mínimo 3 Caracteres"
      },
      cpf: {
          required: "Informe o CPF do Cliente"
      },
      cep: {
          required: "Informe o CEP do Cliente"
      },
      nascimento: {
          required: "Informe o Nascimento do Cliente"
      },
      telefone: {
          required: "Informe o Telefone do Cliente"
      },
      razaoSocial: {
          required: "Informe o Nome do Investidor",
          minlength: "O Nome Informado Deve Conter no Mínimo 5 Caracteres"
      },
      cnpj: {
          required: "Informe o CNPJ do Investidor"
      },
      valorBase: {
          required: "Informe o Valor do Emprestimo"
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });
};


var montarMascaras = function(){

	$('#valorBase').mask('00000');
	$('#cpf').mask('000.000.000-00', {placeholder: "999.999.999-99" });
	$('#cnpj').mask('00.000.000/0000-00', {placeholder: "99.999.999/9999-99" });
	$('#cep').mask('00000-000', {placeholder: "99999-999" });
	$('#telefone').mask('(00) 0000-0000', {placeholder: "(99) 9999-9999" });
	$('#nascimento').mask('00/00/0000', {placeholder: "DD-MM-AAAA" });
};