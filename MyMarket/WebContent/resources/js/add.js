$(function() {
Val();
	function Val(){
		$("#sum").on("click", function() {
			var id = $('#id').val();
			var password = $('#password').val();
			var name = $('#name').val();
			var phone = $('#phone').val();
		

			var idex = /^[A-Za-z0-9+]*$/; // 대소문자영어랑 숫자만가능
			var passwordex = /^[A-Za-z0-9+]*$/;
			var namex = /^[A-Za-z가-힣]*$/;
			var phonex = /^\d{3}-\d{3,4}-\d{4}$/;

			if (!id || !password || !namex || !phonex) {
				alert("회원정보가 들어있지 않습니다!");
				return false;
			}

			if (idex.test(id)) {

			} else {
				alert("아이디는 영어 와 숫자만 사용가능합니다!");
				return false;
			}
			if (passwordex.test(password)) {

			} else {
				alert("비밀번호는 영어 와 숫자만 사용가능합니다!");
				return false;
			}
			if (namex.test(name)) {

			} else {
				alert("이름은 영어와 한글만 사용가능합니다!");
				return false;
			}
			if (phonex.test(phone)) {

			} else {
				alert("전화번호 형식에 맞게 써주세요!");
				return false;
			}
			
		})
	}
		
})