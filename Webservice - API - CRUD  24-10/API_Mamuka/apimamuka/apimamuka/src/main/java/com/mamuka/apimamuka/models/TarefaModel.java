package com.mamuka.apimamuka.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

@Getter
@Setter
@Entity
@Table(name = "tb_tarefa")
public class TarefaModel implements Serializable {
    @Serial
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;

    //    private UUID id_dev ;
    private String dev ;

    //    private UUID id_projeto ;
    private String projeto ;

    private String nome_tarefa;
    private String status_tarefa;
    private DateTimeFormatter data_inicio; // VERFICAR O TIPO DA VARIAVEL
    private DateTimeFormatter data_conclusao; // VERFICAR O TIPO DA VARIAVEL
}