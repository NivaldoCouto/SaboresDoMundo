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
include '../src/Comentario.php';

session_start();

if (isset($_POST['envia_comentario'])) {
    $comentario = $_POST['text-comentario'];
    $id_receita = $_POST['id-receita'];
    $id_user = $_POST['id-user'];

    $comentario = new Comentario('', $comentario, $id_receita, $id_user);
    $comentarios = $comentario->insertComentario();

    if ($comentarios) {
        $_SESSION['msg'] = 'Comentario feito com Sucesso';
        header('Location: ../exibe_receita.php?id_receita=' . $id_receita . '&status=1');
        die();
    } else {
        $_SESSION['msg'] = 'Ops ouve algo de errado.';
        header('Location: ../exibe_receita.php?id_receita=' . $id_receita . '&status=0');
        die();
    }
}
