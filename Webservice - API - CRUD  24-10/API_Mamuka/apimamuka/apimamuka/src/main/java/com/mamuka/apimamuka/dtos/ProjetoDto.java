package com.mamuka.apimamuka.dtos;

import jakarta.validation.constraints.NotBlank;

import java.time.format.DateTimeFormatter;

public record ProjetoDto(
        String gestor,
        @NotBlank String nome_projeto,
        @NotBlank String status_projeto,
        DateTimeFormatter data_inicio,
        DateTimeFormatter data_conclusao
) {
}
