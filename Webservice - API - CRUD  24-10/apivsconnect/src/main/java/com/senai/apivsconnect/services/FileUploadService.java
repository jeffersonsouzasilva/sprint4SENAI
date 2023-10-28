package com.senai.apivsconnect.services;


import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Service
public class FileUploadService {
    private final Path diretorioImg = Paths.get(System.getProperty("user.dir") + "\\src\\main\\resources\\static\\img");
    //metodo upload
    public String FazerUpload(MultipartFile imagem) throws IOException { //throws IOException para tratamento de erros, sem esse da erro na linha que se refere a transmissao

        if (imagem.isEmpty()) {
            System.out.println("imagem vazia");
            return null;
        }

        String nomeOriginal = imagem.getOriginalFilename();
        String[] nomeArquivoArray = nomeOriginal.split("\\.");
        String extensaoArquivo = nomeArquivoArray[nomeArquivoArray.length - 1];

        String prefixoArquivo = LocalDateTime.now().format(DateTimeFormatter.ofPattern("ddMMyyyyHHmmss"));

        String novoNomeImagem = prefixoArquivo + "." + extensaoArquivo;

        File imagemCriada = new File(diretorioImg + "\\" + novoNomeImagem);

        BufferedInputStream stream = new BufferedInputStream(new FileInputStream(imagemCriada)); //canal de transmissao

        stream.write(imagem.getBytes());
        stream.close();

        return novoNomeImagem;









    }
}
