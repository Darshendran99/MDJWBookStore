      	<hr>

      	<footer class="fixed-bottom bg-dark border py-3 px-2">
			<div class="container">
				<div class="d-flex justify-content-between">
					<div class="">
						<a href="" target="_blank" class="text-decoration-none text-muted fw-bold"> //GithubLink <?= date('Y') ?> </a>
					</div>
          <?php if(isset($_SESSION['admin']) && $_SESSION['admin'] == true): ?>

          <?php else: ?>
            <div class="">
              <a href="admin.php" class="text-decoration-none text-white fw-bolder">Login as Admin</a>
            </div>
            <?php endif; ?>
				</div>
			</div>
      	</footer>
		<div class="clear-fix py-4"></div>
    </div> <!-- /container -->

  </body>
</html>
