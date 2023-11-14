package com.mamuka.apimamuka.dtos;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.UUID;

public record TarefaDto(
        UUID id_dev,
        @NotNull UUID id_projeto,
        @NotBlank String nome_tarefa,
        @NotBlank String status_tarefa,
        Date data_inicio,
        Date data_conclusao
) {
}
