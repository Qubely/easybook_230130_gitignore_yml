<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="header d-flex bg-dark justify-content-between">
	<!-- 메인 로고 -->
	<div class="d-flex align-items-center ml-3 font-weight-bold">
		<h3>
			<a href="/main/home" class="text-white">EasyBook</a>
		</h3>
		<!-- 카테고리 -->
		<nav class="ml-3">
			<ul class="nav">
				<li class="nav-item"><a href="/main/new_books"
					class="nav-link category text-white">신간도서</a></li>
				<li class="nav-item"><a href="/main/kor_books"
					class="nav-link category text-white">국내도서</a></li>
				<li class="nav-item"><a href="/main/foreign_books"
					class="nav-link category text-white">외국도서</a></li>
			</ul>
		</nav>
	</div>
	<div class="d-flex align-items-center">
		<nav class="mr-2">
			<ul class="nav">
				<c:choose>
					<c:when test="${not empty userId}">
						<li class="nav-item"><a href="/user/sign_out"
							class="nav-link px-1 menu2 text-white">로그아웃</a></li>
						<li class="nav-item"><a href="/account/order_history_view"
							class="nav-link px-1 menu2 text-white">${userNickName}님 안녕하세요</a></li>
						<li class="nav-item"><a href="/shop/cart_view"
							class="nav-link px-1 menu2 text-white">장바구니</a></li>
					</c:when>
					<c:when test="${not empty nonMemberEmail}">
						<li class="nav-item"><a href="/non_member/sign_out"
							class="nav-link px-1 menu2 text-white">접속해지</a></li>
						<li class="nav-item"><a href="/account/order_history_view"
							class="nav-link px-1 menu2 text-white">구매내역</a></li>
						<li class="nav-item"><a href="/shop/cart_view"
							class="nav-link px-1 menu2 text-white">장바구니</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a href="/user/sign_in_view"
							class="nav-link px-1 menu2 text-white">로그인</a></li>
						<li class="nav-item"><a href="/user/sign_up_view"
							class="nav-link px-1 menu2 text-white">회원가입</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
	</div>
</div>