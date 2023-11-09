package com.mamuka.apimamuka.controllers;

import com.mamuka.apimamuka.models.TarefaModel;
import com.mamuka.apimamuka.repositories.ProjetoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/tarefa", produces = {"application/json"})
public class TarefaController {
    @Autowired
    ProjetoRepository projetoRepository;

    @GetMapping
    public ResponseEntity<List<TarefaModel>> listarTarefas(){

    }
}
