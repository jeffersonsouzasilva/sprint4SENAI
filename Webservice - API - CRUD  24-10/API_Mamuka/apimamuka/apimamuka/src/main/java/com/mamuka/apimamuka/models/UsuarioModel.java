package com.mamuka.apimamuka.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.util.Date;
import java.util.UUID;

@Getter
@Setter
@Entity
@Table(name = "tb_usuario")
public class UsuarioModel implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;

//    private UUID id_tipousuario ;
    private String tipo_usuario ;

    private String nome;
    private String cpf;
    private Date data_nascimento;
    private Boolean status_atividade;
    private String departamento;

//    private UUID id_responsavel ;
    private String responsavel;

    private String perfil;
    private String cargo;
    private String email;

}