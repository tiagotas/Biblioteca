<?php

spl_autoload_register(function ($nome_da_classe)
{
    /**
     * Hack: Trocando a posição da barra para que funcione em servidores Linux.
     */
    $nome_da_classe = str_replace('\\', '/', $nome_da_classe);

    $arquivo = BASE_DIR . "/" . $nome_da_classe . ".php";

    #echo "<br> Arquivo: $arquivo </br>";

    if(file_exists($arquivo))
    {
        include $arquivo;
    } else
        throw new Exception("Arquivo não encontrado: <strong> $arquivo </strong>");
});