<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- UT-NodeJS 중간고사 -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>UT-NodeJS 중간고사 | Register</title>

    <!-- 이현우 20231789 -->
    <meta name="author" content="???" />
    <meta name="description" content="???" />

    <!-- CSS 파일에 대한 link테그를 수정하십시오 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
    <link
      rel="stylesheet"
      media="(max-width: 768px)"
      href="${pageContext.request.contextPath}/public/css/style.small.css"
    />
    <link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/confetti.css" />

    <!-- JS 파일에 대한 script테그를 수정하십시오 -->
    <script defer src="${pageContext.request.contextPath}/public/js/functions.js"></script>
    <script>
      // 폼 검증 함수
      function validateForm() {
        // 필수 필드 값 가져오기
        var name = document.getElementById("floatingName").value;
        var email = document.getElementById("floatingEmail").value;
        var phone = document.getElementById("floatingPhone").value;
        var password = document.getElementsByName("password")[0].value;
        var gender = document.querySelector('input[name="gender"]:checked');
        var hobbies = document.querySelectorAll('input[name="hobbies"]:checked');

        // 필수 입력값 체크
        if (!name || !email || !phone || !password) {
          alert("모든 필드를 입력하세요.");
          return false;
        }

        // 이메일 형식 검증
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        if (!emailPattern.test(email)) {
          alert("유효한 이메일 주소를 입력하세요.");
          return false;
        }

        // 전화번호 형식 검증 (예시: 10자리 숫자만 허용)
        var phonePattern = /^[0-9]{10}$/;
        if (!phonePattern.test(phone)) {
          alert("유효한 전화번호를 입력하세요.");
          return false;
        }

        // 성별 선택 여부 확인
        if (!gender) {
          alert("성별을 선택하세요.");
          return false;
        }

        // 취미 체크 여부 확인
        if (hobbies.length === 0) {
          alert("적어도 하나의 취미를 선택하세요.");
          return false;
        }

        return true;  // 검증 성공
      }
    </script>
  </head>

  <body>
    <!-- HEADER -->

    <jsp:include page="header.jsp"></jsp:include>

    <!-- MAIN 페이지 내용 -->
    <main class="">
      <div class="container col-xl-10 col-xxl-8 px-4 py-5">
        <div class="row align-items-center g-lg-5 py-3">
          <div class="col-lg-7 text-center text-lg-start mb-3">
            <figure>
              <img
                src="https://cdn.pixabay.com/photo/2015/08/07/06/28/transportation-879026_960_720.jpg"
              />
            </figure>
            <h1 class="display-4">Contact Us</h1>
            <p class="lead col-lg-10 fs-4">Get in touch to find out more.</p>
          </div>

          <div class="col-md-10 mx-auto col-lg-5 mb-5">

            <!-- action 속성에서 맞는 파일 경로 입력하세요 -->
            <form
              class="p-4 p-md-5 border rounded-3 bg-light"
              action="./thanks.jsp"
              method="POST"
            >
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control"
                  id="floatingName"
                  placeholder="Name"
                />
                <label for="floatingName">Name</label>
              </div>

              <div class="form-floating mb-3">
                <input
                  type="email"
                  class="form-control"
                  id="floatingEmail"
                  name="email"
                  placeholder="name@example.com"
                  required
                />
                <label for="floatingEmail">Email address</label>
              </div>

              <div class="form-floating mb-3">
                <input
                  type="tel"
                  class="form-control"
                  id="floatingPhone"
                  name="phone"
                  placeholder="Phone"
                  required
                />
                <label for="floatingPhone">Phone</label>
              </div>

              <hr>

              <div class="mb-3">
                <label>Gender</label><br>
                <input type="radio" id="male" name="gender" value="Male" />
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="Female" />
                <label for="female">Female</label>
              </div>

              <div class="mb-3">
                <label>Hobbies</label><br>
                <input type="checkbox" id="cricket" name="hobbies" value="Cricket" />
                <label for="cricket">Cricket</label>
                <input type="checkbox" id="football" name="hobbies" value="Football" />
                <label for="football">Football</label>
                <input type="checkbox" id="chess" name="hobbies" value="Chess" />
                <label for="chess">Chess</label>
              </div>

              <div class="row mb-3">
                <div class="col">
                  <input type="password" class="form-control" name="password" placeholder="Password" required />
                </div>
              </div>

              <button class="w-100 btn btn-lg btn-primary ut-red" type="submit">
                Submit
              </button>
              <hr />
            </form>

          </div>
        </div>
      </div>
    </main>

    <!-- FOOTER -->

	<jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap의 JS -->
    <script src="${pageContext.request.contextPath}/public/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
