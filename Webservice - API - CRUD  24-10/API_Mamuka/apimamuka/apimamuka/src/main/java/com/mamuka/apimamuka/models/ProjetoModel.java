package com.mamuka.apimamuka.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.time.DateTimeException;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.UUID;

@Getter
@Setter
@Entity
@Table(name = "tb_projeto")
public class ProjetoModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "id_gestor", referencedColumnName = "id")
    //    private UUID id_gestor ;
    private String gestor ;

    private String nome_projeto;
    private String status_projeto;
    private DateTimeFormatter data_inicio; // VERFICAR O TIPO DA VARIAVEL
    private DateTimeFormatter data_conclusao; // VERFICAR O TIPO DA VARIAVEL

}