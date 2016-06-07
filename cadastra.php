<?php

include 'conecta.php';

  $codigo =$_POST['codigo'];
  $tipo =$_POST['tipo'];
  $name =$_POST['name'];
  $qtd =$_POST['qtd'];
  $preco = $_POST['preco'];
  $venda = $_POST['radio'];

  $sql = "INSERT INTO mercadoria(idMercadoria, Nome, Qtde, Preco) VALUES(:idMercadoria, :Nome, :Qtde, :Preco)";
  $stmt = $PDO->prepare( $sql );
  $stmt->bindParam( ':idMercadoria', $codigo );
  $stmt->bindParam( ':Nome', $name );
  $stmt->bindParam( ':Qtde', $qtd );
  $stmt->bindParam( ':Preco', $preco );

  $result = $stmt->execute();

  if ( ! $result )
  {
      var_dump( $stmt->errorInfo() );
      exit;
  }

  echo $stmt->rowCount() . "linhas inseridas";

  header('location:index.html');
