<?php

include "../src/conexao.php";
include "../src/Receita.php";
include '../src/FotoReceita.php';
include '../src/Ingrediente.php';
include '../src/IngredienteReceita.php';
include '../src/ReceitaFavorita.php';
include '../src/Avaliacao.php';
include '../src/Util.php';
include '../src/Subscribers.php';

$receita = new Receita();
$retorno = '';
if (!empty($_GET['receita_aprova'])) {
    $retorno = $receita->executeQuery('UPDATE receita SET status = 0 WHERE id = ' . $_GET['receita_aprova']);
    header('Location: ../aprova_receita.php?status=1');
    die();
} else {
    $retorno = $receita->executeQuery('UPDATE receita SET status = 2 WHERE id = ' . $_GET['receita_recusada']);
    header('Location: ../aprova_receita.php?status=0');
    die();
}
