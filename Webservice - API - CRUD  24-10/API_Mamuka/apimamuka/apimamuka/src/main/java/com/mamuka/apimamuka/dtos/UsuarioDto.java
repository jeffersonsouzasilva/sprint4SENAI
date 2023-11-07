package com.mamuka.apimamuka.dtos;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

import java.util.Date;

public record UsuarioDto (
        String tipo_usuario,
        @NotBlank String nome,
        @NotBlank String cpf,
        Date data_nascimento,
        Boolean status_atividade,
        String departamento,
        String responsavel,
        String perfil,
        String cargo,
        @NotBlank @Email(message = " O email deve estar em um formato valido ") String email



){
}
