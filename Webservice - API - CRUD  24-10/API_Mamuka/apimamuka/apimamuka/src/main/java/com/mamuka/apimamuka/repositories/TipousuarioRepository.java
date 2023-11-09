package com.mamuka.apimamuka.repositories;

import com.mamuka.apimamuka.models.TipousuarioModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface TipousuarioRepository extends JpaRepository<TipousuarioModel, UUID> {

}
