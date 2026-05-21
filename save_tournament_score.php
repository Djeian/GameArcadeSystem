<?php
include 'connect.php';

$fname = $_POST['fname'] ?? '';
$lname = $_POST['lname'] ?? '';
$number = $_POST['number'] ?? '';
$type = $_POST['type'] ?? '';
$grade = $_POST['grade'] ?? '';
$strand = $_POST['strand'] ?? '';

$game = $_POST['game'] ?? '';
$level = (int)($_POST['level'] ?? 0);
$score = (int)($_POST['score'] ?? 0);
$time_played = (int)($_POST['time_played'] ?? 0);
$score2 = $_POST['score2'] ?? 0;
$time2 = $_POST['time2'] ?? 0;

$mode = $_POST['mode'] ?? 'tournament';
$player_number = (int)($_POST['player_number'] ?? 1);

$sql = "INSERT INTO leaderboard
(fname, lname, number, type, grade, strand,
game, level, score, time_played,
mode, player_number)
VALUES
(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);

$stmt->bind_param(
"sssssssiiisi",
$fname,
$lname,
$number,
$type,
$grade,
$strand,
$game,
$level,
$score,
$time_played,
$mode,
$player_number
);

if($stmt->execute()){
    echo "Tournament Score Saved";
}else{
    echo "Error: " . $stmt->error;
}
?>