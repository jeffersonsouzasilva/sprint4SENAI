package com.senai.apivsconnect.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.util.UUID;

@Getter
@Setter
@Entity
@Table(name = "tb_usuario") /* modificado para o nome da tabela */
public class UsuarioModel implements Serializable { /* adicionado UsuarioModel implements Serializable*/
    @Serial
    private static final long serialVersionUID = 1L;

    /* adicionado @Serial
    private static final long serialVersionUID = 1L;*/


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;

    /*adicionado nome, email,senha, endereco, cep, url_img, tudo de acordo com a tabela do banco de dados*/
    private String nome;
    private String email;
    private String senha;
    private String endereco;
    private String cep;
    private String url_img;

    //Provisioriamente String, sera alterado para TipoModel enum
    private String tipo_usuario;

}