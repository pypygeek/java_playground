/**
 * 
 */
function check(){
	if(document.form.id.value == ""){
		alert("ID를 입력하세요.");
		document.form.id.focus();
		return false;
		} else if(document.form.age.value == ""){
			alert("나이를 입력하세요.");
			document.form.age.focus();
			return false; 
		}else if(isNaN(document.form.age.value)){
			alert("나이는 숫자만 가능합니다.");
			document.form.age.focus();
			return false; 
		}else if(document.form.fruit.value == ""){
			alert("좋아하는 과일을 입력하세요.");
			document.form.fruit.focus();
			return false; 
		} else return true;
}