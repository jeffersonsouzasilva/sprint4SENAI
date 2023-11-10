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
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "id_dev", referencedColumnName = "id")
    //    private UUID id_dev ;
    private String dev ;

    @ManyToOne
    @JoinColumn(name = "id_projeto", referencedColumnName = "id")
    //    private UUID id_projeto ;
    private String projeto ;

    private String nome_tarefa;
    private String status_tarefa;
    private DateTimeFormatter data_inicio; // VERFICAR O TIPO DA VARIAVEL
    private DateTimeFormatter data_conclusao; // VERFICAR O TIPO DA VARIAVEL
}