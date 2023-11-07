package com.mamuka.apimamuka.dtos;

import jakarta.validation.constraints.NotBlank;

import java.time.format.DateTimeFormatter;

public record TarefaDto(
        String dev,
        String projeto,
        @NotBlank String nome_tarefa,
        @NotBlank String status_tarefa,
        DateTimeFormatter data_inicio,
        DateTimeFormatter data_conclusao
) {
}
