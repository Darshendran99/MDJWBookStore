<?php
	session_start();
	require_once "./functions/database_functions.php";
	$conn = db_connect();

	$query = "SELECT * FROM publisher ORDER BY publisherid";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Can't retrieve data " . mysqli_error($conn);
		exit;
	}
	if(mysqli_num_rows($result) == 0){
		echo "Empty publisher ! Something wrong! check again";
		exit;
	}

	$title = "List Of Publishers";
	require "./section/header.php";
?>
<br><br>
	<div class="h5 fw-bolder text-center">List of Publishers</div>
	<hr>
	<div class="list-group ">
		<a class="list-group-item list-group-item-action bg-dark text-white" href="books.php">
			List of All Books
		</a>
	<?php
		while($row = mysqli_fetch_assoc($result)){
			$count = 0;
			$query = "SELECT publisherid FROM books";
			$result2 = mysqli_query($conn, $query);
			if(!$result2){
				echo "Can't retrieve data " . mysqli_error($conn);
				exit;
			}
			while ($pubInBook = mysqli_fetch_assoc($result2)){
				if($pubInBook['publisherid'] == $row['publisherid']){
					$count++;
				}
			}
	?>
		<a class="list-group-item list-group-item-action bg-dark bg-gradient text-white" href="bookPerPub.php?pubid=<?php echo $row['publisherid']; ?>">
			<span class="badge badge-primary bg-info text-black rounded-pill"><?php echo $count; ?></span>&nbsp;
			<?php echo $row['publisher_name']; ?>
		</a>
	<?php } ?>
	</div>
<?php
	mysqli_close($conn);
	require "./section/footer.php";
?>
