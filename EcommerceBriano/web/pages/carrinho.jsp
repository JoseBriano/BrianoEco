<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ page import="model.Bean.Produtos" %>
      <%@ page import="model.DAO.ProdutosDAO" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
          <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
          <link rel="preconnect" href="https://fonts.googleapis.com">
          <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
          <link href="https://fonts.googleapis.com/css2?family=Whisper&display=swap" rel="stylesheet">
          <link rel="preconnect" href="https://fonts.googleapis.com">
          <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
          <link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&display=swap" rel="stylesheet">
          <link rel="stylesheet" href="styles/home.css">
          <link rel="stylesheet" href="styles/cards.css">
          <link rel="stylesheet" href="styles/promo.css">
          <link rel="stylesheet" href="styles/carrinho.css">
          <link rel="icon" href="assets/logo.png">
          <title>Carrinho</title>
        </head>

        <body>
          <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="#"> <img src="assets/logo.png" alt=""></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado"
                aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                    <a class="nav-link" href="redirect.jsp"><i class="fa-solid fa-house"></i> Home <i
                        class="fa-solid fa-house"></i><span class="sr-only">(página
                        atual)</span></a>
                  </li>
                </ul>
              </div>
            </nav>
          </header>
          <main>
            <h1>Suas Compras</h1>
            </div>
            <div class="container">
              <c:forEach items="${carrinhos}" var="carrinho">
                <div id="${carrinho.idCarrinho}" class="carrinho">
                  <img src="data:image/png;base64,${carrinho.imagemBase64}" alt="${carrinho.nomeCarrinho}">
                  <h2>${carrinho.nomeCarrinho}</h2>
                  <h2>${carrinho.descricao_carrinho}</h2>
                  <p id="p1" class="preco">R$ ${carrinho.precoCarrinho}</p>
                  <button type="submit" class="lixo"><i class="fa-solid fa-trash"></i></button>
                  <button type="submit" class="comprar"><i class="fa-solid fa-check"></i></button>
                </div>
              </c:forEach>
            </div>
            <c:forEach items="${carrinhos1}" var="carrinho">
              <div class="content">
                <h2 class="text">Total:</h2>
                <p class="preco" id="preco">R$ ${carrinho.total}</p>
              </div>
            </c:forEach>
          </main>
          <footer>
            <div class="redes">

              <a href="https://www.instagram.com/run_sotre/" class="btn btn-outline-succes my-2 my-sm-1"
                type="submit"><i class="fa-brands fa-instagram"></i></a>
              <a href="https://www.facebook.com/profile.php?id=100012932593794&locale=pt_BR"
                class="btn btn-outline-succes my-2 my-sm-1" type="submit"><i class="fa-brands fa-facebook"></i></a>
              <a href="https://wa.me/5543996898525" class="btn btn-outline-succes my-2 my-sm-1" type="submit"><i
                  class="fa-brands fa-whatsapp"></i></a>


            </div>
            &copy; Todos os direitos reservados a Briano
          </footer>
          <script src="https://kit.fontawesome.com/1634f6c9c7.js" crossorigin="anonymous"></script>
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
        </body>

        </html>