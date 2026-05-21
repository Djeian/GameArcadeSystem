<?php

include 'connect.php';

header('Content-Type: application/json');

$mode = $_GET['mode'] ?? 'normal';

$sql = "
SELECT *
FROM leaderboard
WHERE mode='$mode'
ORDER BY score DESC, time_played ASC
";

$result = $conn->query($sql);

$scores = [];

if($result){

    while($row = $result->fetch_assoc()){

        $scores[] = [

            'fname' => $row['fname'],
            'lname' => $row['lname'],
            'number' => $row['number'],

            'type' => $row['type'],
            'grade' => $row['grade'],
            'strand' => $row['strand'],

            'game' => $row['game'],

            'level' => (int)$row['level'],
            'score' => (int)$row['score'],
            'time_played' => (int)$row['time_played'],

            'mode' => $row['mode'],
            'player_number' => $row['player_number']
        ];
    }
}

echo json_encode($scores);

$conn->close();

?>