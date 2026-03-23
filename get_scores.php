<?php
include 'connect.php';
header('Content-Type: application/json');

$result = $conn->query("SELECT * FROM leaderboard ORDER BY score DESC");

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
            'time_played' => (int)$row['time_played']
        ];
    }
}

echo json_encode($scores);

$conn->close();
?>