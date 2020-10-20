<?php

class Comentario
{

    private $id;
    private $comentario;
    private $id_receita;
    private $id_user;
    private $timestamp;

    function __construct($id = "", $comentario = "", $id_receita = "", $id_user = "", $timestamp = "")
    {
        $this->id = $id;
        $this->comentario =  $comentario;
        $this->id_receita = $id_receita;
        $this->id_user = $id_user;
        $this->timestamp = $timestamp;
    }

    function getId()
    {
        return $this->id;
    }

    function getComentario()
    {
        return ($this->comentario);
    }

    function getId_receita()
    {
        return ($this->id_receita);
    }

    function getId_user()
    {
        return ($this->id_user);
    }

    function getTimestamp()
    {
        return $this->timestamp;
    }

    function setId($id)
    {
        $this->id = (addslashes($id));
    }

    function setComentario($comentario)
    {
        $this->comentario = (addslashes($comentario));
    }

    function setId_receita($id_receita)
    {
        $this->id_receita = (addslashes($id_receita));
    }

    function setId_user($id_user)
    {
        $this->id_user = (addslashes($id_user));
    }

    function setTimestamp($timestamp)
    {
        $this->timestamp = $timestamp;
    }

    function insertComentario()
    {
        if (empty($this->id)) {
            $conexao = new conexao();
            try {
                $connect = $conexao->insertDB("INSERT INTO `comentario`(`comentario`, `id_receita`, `id_user`) "
                    . "VALUES ('" . $this->comentario . "', '" . $this->id_receita . "', '" . $this->id_user . "')");
                $this->id = $connect;

                return $connect;
            } catch (Exception $ex) {
                //var_dump($ex);
            }
        } else {
            return false;
        }
    }

    function selectComentarioId($id)
    {
        $conexao = new conexao();
        try {
            $connect = $conexao->selectDB("SELECT * FROM `comentario` WHERE `id_receita` = " . $id);

            foreach ($connect as $value) {
                $nome_user = $conexao->selectDB("SELECT nome FROM `usuario` WHERE id =" . $value->id_user);
                $aux[] = [
                    'id' => $value->id,
                    'comentario' => $value->comentario,
                    'nome_user' => $nome_user[0]->nome,
                    'id_receita' => $value->id_receita,
                    'timestamp' => $value->timestamp
                ];
            }
            return $aux;
        } catch (Exception $ex) {
            // var_dump($ex);
        }
    }
}
