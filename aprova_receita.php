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
?>

<style>
    .cabecalho {
        text-align: center;
        font-weight: 700;
    }

    .conteudo_table {
        text-align: center;
    }
</style>

<!-- CRIAR AQUI O HTML DA SUA PAGINA -->
<div class="container">
    <div class="card testimonial-card" style="margin-top: 4%;">
        <div class="card-up indigo lighten-1"></div>

        <div class="card-body">
            <!-- Name -->
            <h4 class="card-title">Aprovar Receitas</h4>
            <hr>
            <!-- Card -->
            <div class="card">
                <!-- Card body -->
                <div class="card-body">

                    <table id="dtBasicExample" class="table" width="100%">
                        <thead>
                            <tr>
                                <th class="th-sm cabecalho">Nome
                                </th>
                                <th class="th-sm cabecalho">Usuario ID
                                </th>
                                <th class="th-sm cabecalho">Ações
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $receita = new Receita();
                            $receitas = $receita->executeQuery('SELECT * FROM `receita` WHERE `status` = 1');

                            foreach ($receitas as $rec) {

                            ?>
                                <tr>
                                    <td class="conteudo_table"><?php echo $rec->getTitulo(); ?></td>
                                    <td class="conteudo_table"><?php echo $rec->getUsuario(); ?></td>
                                    <td class="conteudo_table">
                                        <a href="visualiza_receita_aprova.php?id_receita=<?php echo $rec->getId(); ?>" type="button" class="btn btn-primary">Visualizar Receita</a>
                                    </td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <?php
    include 'rodape.php';
    ?>

    <script>
        $(document).ready(function() {
            $('a[href="aprova_receita.php"]').addClass('active');
        });

        $(document).ready(function() {
            $('a[href="aprova_receita.php"]').parents('li').addClass('ativo');
        });
    </script>
</div>