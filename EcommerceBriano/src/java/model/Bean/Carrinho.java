/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.Bean;

import java.sql.Blob;
import java.util.Base64;

/**
 *
 * @author consa
 */
public class Carrinho {
    private int idCarrinho;
    private String nomeCarrinho;
    private byte[] imagemCarrinho;
    private String descricaoCarrinho;
    private float precoCarrinho;
    private int quantidadeCarrinho;
    private int idProdutos;
    private int idUsuario;
    private int tamanho;

    public Carrinho(int idCarrinho, String nomeCarrinho, byte[] imagemCarrinho, String descricaoCarrinho, float precoCarrinho, int quantidadeCarrinho, int idProdutos, int idUsuario, int tamanho) {
        this.idCarrinho = idCarrinho;
        this.nomeCarrinho = nomeCarrinho;
        this.imagemCarrinho = imagemCarrinho;
        this.descricaoCarrinho = descricaoCarrinho;
        this.precoCarrinho = precoCarrinho;
        this.quantidadeCarrinho = quantidadeCarrinho;
        this.idProdutos = idProdutos;
        this.idUsuario = idUsuario;
        this.tamanho = tamanho;
    }

    public int getIdCarrinho() {
        return idCarrinho;
    }

    public void setIdCarrinho(int idCarrinho) {
        this.idCarrinho = idCarrinho;
    }

    public String getNomeCarrinho() {
        return nomeCarrinho;
    }

    public void setNomeCarrinho(String nomeCarrinho) {
        this.nomeCarrinho = nomeCarrinho;
    }

    public int getTamanho() {
        return tamanho;
    }

    public void setTamanho(int tamanho) {
        this.tamanho = tamanho;
    }

    public byte[] getImagemCarrinho() {
        return imagemCarrinho;
    }

    public void setImagemCarrinho(byte[] imagemCarrinho) {
        this.imagemCarrinho = imagemCarrinho;
    }

    public String getDescricaoCarrinho() {
        return descricaoCarrinho;
    }

    public void setDescricaoCarrinho(String descricaoCarrinho) {
        this.descricaoCarrinho = descricaoCarrinho;
    }

    public float getPrecoCarrinho() {
        return precoCarrinho;
    }

    public void setPrecoCarrinho(float precoCarrinho) {
        this.precoCarrinho = precoCarrinho;
    }

    public int getQuantidadeCarrinho() {
        return quantidadeCarrinho;
    }

    public void setQuantidadeCarrinho(int quantidadeCarrinho) {
        this.quantidadeCarrinho = quantidadeCarrinho;
    }

    public int getIdProdutos() {
        return idProdutos;
    }

    public void setIdProdutos(int idProdutos) {
        this.idProdutos = idProdutos;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    

    public Carrinho() {
    }
            public String getImagemBase64() {
        if (imagemCarrinho != null) {
            return Base64.getEncoder().encodeToString(imagemCarrinho);
        } else {
            return "";
        }
    }
}