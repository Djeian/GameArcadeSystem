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

$stmt = $conn->prepare("INSERT INTO leaderboard (fname, lname, number, type, grade, strand, game, level, score, time_played) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sssssssiii", $fname, $lname, $number, $type, $grade, $strand, $game, $level, $score, $time_played);

if($stmt->execute()){
    echo "Score saved successfully";
}else{
    echo "Failed: ".$conn->error;
}

$stmt->close();
$conn->close();
?>