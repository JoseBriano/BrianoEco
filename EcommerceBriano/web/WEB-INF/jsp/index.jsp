<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <html lang="pt-br">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link href="https://fonts.googleapis.com/css2?family=Whisper&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&display=swap" rel="stylesheet">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Poetsen+One&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="styles/home.css">
      <link rel="icon" href="assets/logo.png">

      <title>Home</title>
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
                <a class="nav-link" href="#"><i class="fa-solid fa-house"></i> Home <span class="sr-only">(página
                    atual)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./Promocoes"><i class="fa-solid fa-fire" style="color: #ea3434;"></i>
                  Promoções</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">
                  <i class="fa-solid fa-tags" style="color: #307e66;"></i> Categoria
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="./Masculina"><i class="fa-solid fa-person" style="color: #005eff;"></i>
                    Masculina</a>
                  <a class="dropdown-item" href="./Feminina"><i class="fa-solid fa-person-dress"
                      style="color: #fa00e5;"></i> Feminina</a>
                  <a class="dropdown-item" href="./CadastroProd"><i class="fa-solid fa-pen-to-square"></i> Cadastrar</a>
                </div>
              </li>

            </ul>
            <form class="form-inline my-2 my-lg-0" action="achar" enctype="multipart/form-data" method="post">
              <input class="form-control mr-sm-2 barra" type="search" placeholder="Pesquisar" aria-label="Pesquisar"
                name="nome">
              <button class="btn btn-outline-success my-2 my-sm-0 lupa" type="submit"><i
                  class="fa-solid fa-magnifying-glass"></i></button>
            </form>
            <a class="btn btn-outline-succes my-2 my-sm-3" href="./CarrinhoController"><i
                class="fa-solid fa-cart-shopping"></i></a>
            <a href="./Login" class="btn btn-outline-succes my-2 my-sm-1" type="submit"><i
                class="fa-regular fa-user"></i></a>
          </div>
        </nav>
      </header>
      <main>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block w-100" src="assets/banernike1.png" alt="Primeiro Slide">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="assets/banerpuma1.png" alt="Segundo Slide">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="assets/BanerPuma2.png" alt="Terceiro Slide">
            </div>

          </div>
          <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Anterior</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Próximo</span>
          </a>
        </div>
        <h1>Veja nossos produtos</h1>
        <div class="container">
          <c:forEach items="${produtos}" var="produto">
            <div id="${produto.idProdutos}" class="produto">
              <h2>${produto.nome}</h2>
              <div class="ava">
                <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
                <i class="fa-solid fa-star" style="color: #FFD43B;"></i>
              </div>
             
              <img src="data:image/png;base64,${produto.imagemBase64}" alt="${produto.nome}">
              <p>R$ ${produto.preco}</p>
              <a href="./ProdutoInd?id=${produto.idProdutos}"><input type="submit" value="Comprar"></a>
            </div>
          </c:forEach>
        </div>
      </main>
      <footer>
        <div class="redes">

          <a href="https://www.instagram.com/run_sotre/" class="btn btn-outline-succes my-2 my-sm-1" type="submit"><i
              class="fa-brands fa-instagram"></i></a>
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
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
    </body>

    </html>