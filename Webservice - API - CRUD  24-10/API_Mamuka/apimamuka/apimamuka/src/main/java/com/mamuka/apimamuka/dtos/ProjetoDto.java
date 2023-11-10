package com.mamuka.apimamuka.dtos;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import java.time.format.DateTimeFormatter;
import java.util.UUID;

public record ProjetoDto(
        @NotNull UUID id_gestor,
        @NotBlank String nome_projeto,
        @NotBlank String status_projeto,
        DateTimeFormatter data_inicio,
        DateTimeFormatter data_conclusao
) {
}
