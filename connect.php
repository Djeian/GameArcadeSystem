    <?php

    $host = "localhost";
    $user = "root";
    $password = "yourpassword123";
    $database = "arcadesystem";

    $conn = new mysqli($host, $user, $password, $database);

    if($conn->connect_error){
        die("Connection failed");
    }

    ?>