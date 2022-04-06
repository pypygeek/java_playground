// const와 let 차이점
// const는 변수 재선언 및 재할당이 불가능하지만, let은 가능하다.

function mission2_1() {
  const [input1, input2] = arguments;
  console.log(
    "덧셈 결과 입니다 -> " +
      Math.round(Number(input1) + Number(input2)) +
      "<br>" +
      "나누기 결과 입니다 -> " +
      Math.round(Number(input1) / Number(input2))
  );
}

/*
1차원 좌표
function mission2_2() {
  const [input1, input2] = arguments;
  console.log("두 점의 거리 출력 -> " + Math.abs(Number(input1) - Number(input2)));
}
*/

function mission2_2() {
  const [input1, input2] = arguments;
  let x = Number(input1[0]) - Number(input2[0]);
  let y = Number(input1[2]) - Number(input2[2]);
  console.log(Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2)));
}

function mission2_3() {
  const [input1, input2] = arguments;
  // NaN(Not-A-Number) 비교하는 값이 숫자이면 false를 반환하고 숫자가 아니면 true를 반환한다.
  if (isNaN(Number(input2))) {
    console.log("숫자를 입력하세요.");
  } else if (input2 > 100) {
    console.log("너무 큰 숫자입니다.");
  } else {
    // 반지름 제곱 * PI *  높이 / 2가 원뿔 구하는 공식!
    let num = (Number(input1 * input1 * Math.PI) * Number(input2)) / 3;
    console.log(
      "반지름이 " +
        input1 +
        " 이고 높이가 " +
        input2 +
        "인 원뿔의 부피는 " +
        num.toFixed(1) +
        " 입니다."
    );
  }
}

function mission2_4() {
  const [input1] = arguments;
  const boxPrice = 20000;
  let temp = 0.0;
  if (isNaN(Number(input1))) {
    console.log("숫자를 입력하세요.");
  } else if (temp === 1) {
    temp = Math.round(Number(input1));
    console.log("택배비 포함 -> " + (boxPrice + 2500) + "입니다.");
  } else {
    temp = Math.round(Number(input1));
    console.log(
      "택배비 포함 -> " +
        (boxPrice * temp + (1500 * (temp - 1) + 2500)) +
        "입니다."
    );
  }
}