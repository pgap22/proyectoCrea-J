<?php  

$message = '

<style>
    *{
        margin: 0;
        padding: 0;
    }
    body{
        font-family: sans-serif;
    }
</style>
<body class="main">
    <center>
        <table bgcolor="black" width="100%">
            <tr >
                <td width="25%"></td>
                <td width="25%">
                  <center>
                    <img width="300" src="http://drive.google.com/uc?export=view&id=19hpn-esQGFecb-sqqQ7iZiqFCks0Dd-j" alt="Imagen del Logo de MUO">
                  </center>
                </td>
                <td width="25%"></td>
            </tr>
            <tr>
                <td width="15%" bgcolor="black"></td>
                <td width="50%" bgcolor="white">
                    <center><h1>TITLE OF THE EMAIL</h1></center>
                    <br><br><br><br>
                    <p>Hola, <b>Nombre_Usuario</b></p>
                    <br><br>
                    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Numquam ad nam ipsum nisi porro temporibus nesciunt atque quo aliquid necessitatibus nulla, reiciendis debitis cum. Praesentium itaque animi ad ducimus a!</p>
                    <br><br><br><br>
                    <a href="#" style="text-decoration: none; color:white; background-color: black; margin: 20px; padding: 20px; ">LINK TO DO SOME STUFF</a>
                    <br>
                    <br>
                    <br>
                    <br>
                </td>
                <td width="15%" bgcolor="black"></td>
            </tr>
        </table>
    </center>
</body>
';
echo $message;
mail("gerardo.saz120@gmail.com", "test", $message, "Content-Type: text/html; charset=UTF-8\r\n");
?>