<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nhập mã OTP</title>
<style>
/* style.css */
.container {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.input {
	width: 40px;
	border: none;
	border-bottom: 3px solid rgba(0, 0, 0, 0.5);
	margin: 0 10px;
	text-align: center;
	font-size: 36px;
	cursor: not-allowed;
	pointer-events: none;
}

.input:focus {
	border-bottom: 3px solid orange;
	outline: none;
}

.input:nth-child(1) {
	cursor: pointer;
	pointer-events: all;
}
</style>
</head>
<body>

	<form class="verify-form" action="customerSignup.htm" method="post">
			<h1>
				Hãy nhập mã OTP mà hệ thống vừa gửi tới email: <span>${email }</span>
			</h1>
			<span class="messenger">${message}</span>
		<div class="container">
			
			<div id="inputs" class="inputs">
				<input class="input" type="text" name="a" maxlength="1" autocomplete="off" /> 
				<input class="input" type="text" name="b" maxlength="1" autocomplete="off" /> 
				<input class="input" type="text" name="c" maxlength="1" autocomplete="off" /> 
				<input class="input" type="text" name="d" maxlength="1" autocomplete="off" />
				<input class="input" type="text" name="e" maxlength="1" autocomplete="off" /> 
				<input class="input" type="text" name="f" maxlength="1" autocomplete="off" />
			</div>
		</div>
		<button id="btn-veri" name="verify">Xác Nhận</button>
		<button id="btn-again" name="again">Gửi lại mã</button>
	</form>

	<script>
		// script.js
		const inputs = document.getElementById("inputs");

		inputs.addEventListener("input", function(e) {
			const target = e.target;
			const val = target.value;

			if (val != "") {
				const next = target.nextElementSibling;
				if (next) {
					next.focus();
				}
			}
		});

		inputs.addEventListener("keyup", function(e) {
			const target = e.target;
			const key = e.key.toLowerCase();

			if (key == "backspace" || key == "delete") {
				target.value = "";
				const prev = target.previousElementSibling;
				if (prev) {
					prev.focus();
				}
				return;
			}
		});
	</script>
</body>
</html>