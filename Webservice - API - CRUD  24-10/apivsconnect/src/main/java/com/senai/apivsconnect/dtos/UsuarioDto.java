package com.senai.apivsconnect.dtos;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;

public record UsuarioDto(
        @NotBlank String nome, //NotBlank nao pode em branco
        @NotBlank @Email(message = "O email deve estar em um formato valido") String email, //@Email deve estar em formato de email
        @NotBlank String senha,
        String endereco,
        String cep,
        String tipo_usuario,
        MultipartFile imagem
) {
}
