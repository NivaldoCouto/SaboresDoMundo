<?php

error_reporting(0);
ini_set(“display_errors”, 0);

if (isset($_SESSION['id_user'])) {
    $logado = 1;
} else {
    $logado = 0;
}

include 'topo.php';

if (isset($_SESSION['id_user'])) {
    $current_user = new Usuario();
    $current_user->selectUserId($_SESSION['id_user']);
}

// include "src/conexao.php";


$receita = new Receita();

$receita->selectReceitaId($_GET['id_receita']);
?>

<!-- INCLUIR OU CRIAR AQUI SEUS ESTILOS -->
<style>
    img.d-block {
        max-height: 480px !important;
    }

    .destaque {
        font-size: 20px;
        text-transform: uppercase;

    }

    .destaque>b {
        font-size: 26px;
        text-transform: uppercase;
        font-weight: bold;
    }

    .checked {
        color: orange;
    }

    .favorito {
        color: red;
    }

    .fa-star:hover {
        cursor: pointer;
    }

    .fa-heart:hover {
        cursor: pointer;
    }

    main {
        padding-top: 5% !important;
        padding-bottom: 5% !important;
    }

    @media only screen and (max-width: 450px) {
        main {
            padding-top: 20% !important;
            padding-bottom: 5% !important;
        }
    }

    .voltar {
        padding: 10px;
    }
</style>

<!-- CRIAR AQUI O HTML DA SUA PAGINA -->
<div class="container">
    <div class="card">
        <!-- Card content -->
        <div class="card-body">
            <!--Carousel Wrapper-->
            <div id="carousel" class="carousel slide carousel-fade" data-ride="carousel">
                <!--Slides-->
                <div class="carousel-inner" role="listbox">
                    <!--First slide-->
                    <?php
                    $aux_foto = '';

                    $foto_receita = new FotoReceita();
                    $aux_foto = $foto_receita->executeQuery('SELECT FR.id, FR.receita, FR.path_foto, FR.usuario, FR.timestamp FROM foto_receita AS FR INNER JOIN receita ON FR.receita = receita.id WHERE receita.id =' . $receita->getId());

                    if (count($aux_foto) > 0) {
                        foreach ($aux_foto as $chave => $foto) {
                    ?>
                            <div class="carousel-item <?php if ($chave == 0) {
                                                            echo 'active';
                                                        } ?>">
                                <img class="d-block w-100" src="<?php echo ($foto->getPath_foto()); ?>">
                            </div>
                    <?php
                        }
                    }
                    ?>

                </div>
                <!--/.Slides-->
                <!--Controls-->
                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Próximo</span>
                </a>
                <!--/.Controls-->
            </div>
            <br>
            <!-- Title -->
            <div class="row">

                <div class="col-sm-4" align="center">
                    <h4 class="card-title"><a style="font-size: 28px; "><?php echo $receita->getTitulo(); ?></a></h4>
                </div>

                <div class="col-sm-2 col-6" align="center">
                    <h6 class="font-weight-bold indigo-text py-2" style="padding-top: 0px!important;"> <i class="far fa-clock"></i> <?php echo number_format($receita->getTempo_preparo(), 2, ':', ''); ?></h6>
                </div>

                <div class="col-md-2 col-6" align="center">
                    <?php
                    $pais = new Pais();
                    $aux = $pais->executeQuery("SELECT `pais`.* FROM `pais` INNER JOIN `receita` ON `pais`.`id` = `receita`.`pais` WHERE `receita`.`id` = " . $receita->getId());

                    if (count($aux)) {
                    ?>
                        <a href="#" style="font-size: 16px; font-weight: bold; color: #000;">
                            <img src="<?php echo ($aux[0]->getPath_icon()); ?>" class="rounded-circle hoverable" width="30">
                            <?php echo $aux[0]->getNome(); ?>
                        </a>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12" align="center">
            <a href="aprova_receita.php" type="button" class="btn btn-primary"> Voltar</a>
            <a href="control/aprova_receita.php?receita_aprova=<?php echo $_GET['id_receita']; ?>" type="button" class="btn btn-success"> Aceitar</a>
            <a href="control/aprova_receita.php?receita_recusada=<?php echo $_GET['id_receita']; ?>" type="button" class="btn btn-danger"> Recusar</a>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12" align="center">
                    <p style="font-size: 24px; font-weight: bold;">INGREDIENTES</p>
                </div>
                <div class="col-sm-12">
                    <ul class="list-group">
                        <?php

                        $ingre_receita = new IngredienteReceita();
                        $aux_ingre = $ingre_receita->executeQuery("SELECT * FROM `ingrediente_receita` WHERE `receita` = " . $receita->getId());


                        foreach ($aux_ingre as $key => $value) {
                            $ingrediente = new Ingrediente();
                            $ingrediente->selectIngredienteId($value->getIngrediente());
                        ?>
                            <li class="list-group-item destaque"><?php echo '<b>' . ($key + 1) . ' - </b>  ' . $value->getQuantidade() . ' ' . $ingrediente->getMedida() . ' de ' . $ingrediente->getNome(); ?></li>
                        <?php
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="card" style="margin-top: 45px;">
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12" align="center">
                    <p style="font-size: 24px; font-weight: bold;">MODO DE PREPARO</p>
                </div>
                <div class="col-sm-12 destaque" style="padding-left: 5%">
                    <?php

                    echo $receita->getModo_preparo();
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include 'rodape.php';
?>