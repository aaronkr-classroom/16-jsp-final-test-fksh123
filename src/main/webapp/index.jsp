<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>UT-NodeJS 중간고사</title>

    <!-- 학생 이름과 학번 -->
    <meta name="author" content="???" />
    <meta name="description" content="???" />

    <!-- CSS 파일 -->
    <link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
    <link
      rel="stylesheet"
      media="(max-width: 768px)"
      href="${pageContext.request.contextPath}/public/css/style.small.css"
    />

    <!-- JS 파일 -->
    <script defer src="${pageContext.request.contextPath}/public/js/functions.js"></script>
  </head>

  <body id="index">
    <!-- HEADER -->
    <%@ include file="header.jsp" %>

    <!-- MAIN 페이지 내용 -->
    <main class="text-center cover-container">
      <div class="cover-content h-100 w-100 text-white">
        <div class="cover-box-2">
          <h1 class="page-title">
            <span class="ut-red">UT</span>-NodeJS 중간고사
          </h1>
          <p class="page-description lead">
            <!-- 로그인 폼 추가 -->
          </p>

          <!-- 로그인 폼 시작 -->
          <div class="login-form-container text-dark bg-light p-4 rounded">
            <form name="loginForm" action="j_security_check" method="post">
              <div class="mb-3">
                <label for="username" class="form-label">사용자명:</label>
                <input type="text" id="username" name="j_username" class="form-control" placeholder="사용자명을 입력하세요" required />
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">비밀번호:</label>
                <input type="password" id="password" name="j_password" class="form-control" placeholder="비밀번호를 입력하세요" required />
              </div>
              <button type="submit" class="btn btn-primary w-100">로그인</button>
            </form>
          </div>
          <!-- 로그인 폼 끝 -->
        </div>
      </div>
    </main>

    <!-- FOOTER -->
    <jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/public/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
