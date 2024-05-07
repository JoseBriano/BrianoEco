/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.Bean;

/**
 *
 * @author Senai
 */
public class Carrinho {
    private int idCarrinho;

    public int getIdCarrinho() {
        return idCarrinho;
    }

    public void setIdCarrinho(int idCarrinho) {
        this.idCarrinho = idCarrinho;
    }
    private String nomeCarrinho;
    private byte[] imagem;
    private String categoriaCarrinho;
    private String descricaoCarrinho;
    private float precoCarrinho;
    private int quantidadeCarrinho;
    private int IdProdutos;

    public String getNomeCarrinho() {
        return nomeCarrinho;
    }

    public void setNomeCarrinho(String nomeCarrinho) {
        this.nomeCarrinho = nomeCarrinho;
    }

    public byte[] getImagem() {
        return imagem;
    }

    public void setImagem(byte[] imagem) {
        this.imagem = imagem;
    }

    public String getCategoriaCarrinho() {
        return categoriaCarrinho;
    }

    public void setCategoriaCarrinho(String categoriaCarrinho) {
        this.categoriaCarrinho = categoriaCarrinho;
    }

    public String getDescricaoCarrinho() {
        return descricaoCarrinho;
    }

    public void setDescricaoCarrinho(String descriçãoCarrinho) {
        this.descricaoCarrinho = descriçãoCarrinho;
    }

    public Carrinho(int idCarrinho) {
        this.idCarrinho = idCarrinho;
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
        return IdProdutos;
    }

    public void setIdProdutos(int IdProdutos) {
        this.IdProdutos = IdProdutos;
    }

    public Carrinho(String nomeCarrinho, byte[] imagem, String categoriaCarrinho, String descricaoCarrinho, float precoCarrinho, int quantidadeCarrinho, int IdProdutos) {
        this.nomeCarrinho = nomeCarrinho;
        this.imagem = imagem;
        this.categoriaCarrinho = categoriaCarrinho;
        this.descricaoCarrinho = descricaoCarrinho;
        this.precoCarrinho = precoCarrinho;
        this.quantidadeCarrinho = quantidadeCarrinho;
        this.IdProdutos = IdProdutos;
    }

    public Carrinho() {
    }
    
}
