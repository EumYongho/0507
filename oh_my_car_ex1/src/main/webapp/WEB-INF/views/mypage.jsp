<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MyPage</title>
<style>
/* CSS 스타일링은 여기에 포함 */
</style>
</head>
<body>
	<div class="container">
		<h1>MyPage</h1>
		<form id="profileForm" action="saveProfile" method="post">
			<label for="name">Name:</label> <input type="text" id="name"
				name="name" required> <label for="email">Email:</label> <input
				type="text" id="email" name="email" required> <label
				for="password">New Password:</label> <input type="password"
				id="password" name="password" required> <label
				for="confirmPassword">Confirm Password:</label> <input
				type="password" id="confirmPassword" name="confirmPassword" required>
			<label for="bio">Bio:</label>
			<textarea id="bio" name="bio" rows="4"></textarea>
			<button type="submit">Save</button>
		</form>
		<div id="profileInfo">
			<c:if test="${not empty error}">
				<p style="color: red;">
					<c:out value="${error}" />
				</p>
			</c:if>
			<c:if test="${not empty name}">
				<h2>Profile Information</h2>
				<p>
					<strong>Name:</strong> ${name}
				</p>
				<p>
					<strong>Email:</strong> ${email}
				</p>
				<p>
					<strong>Bio:</strong> ${bio}
				</p>
			</c:if>
		</div>
	</div>
</body>
</html>
