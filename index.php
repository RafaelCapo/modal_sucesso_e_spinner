<!DOCTYPE html>
<html>
<head>
	<title>Sistema de Comentários | PHP e AJAX</title>

	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<section class="content">
		<div class="box_form">
			<h1>Deixe seu Comentário:</h1>
			<form id="form1">
				<label for="name">Nome</label><br>
				<input type="text" name="name" id="name"/><br><br>

				<label for="comment">Comentário</label><br>
				<textarea name="comment" id="comment"></textarea><br><br>

				<input type="submit" form="form1" class="btn-sub" value="Enviar Comentário"/><br><br>
			</form>
		</div>

		<div class="box_comment">
			
		</div>
	</section>

	<div id="box_dark" class="box_dark">
		<div class="box_modal" id="box_modal">
			<button id="modal_close">X</button>

			<div class="b_text">
				<!--Injetar via JS-->
			</div>
		</div>
	</div>

	<div class="spinner">
		<img src="assets/imgs/Rolling.gif">
	</div>
	
	<script src="assets/js/jQuery/jquery-3.5.1.min.js"></script>
	<script src="assets/js/script.js"></script>
</body>
</html>