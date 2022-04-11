function sum(a, b) {
  return a + b;
}

function powWithSum(num) {
  return Math.pow(num, 2);
}

function mission3_1() {
  const [input1, input2] = arguments;
  num1 = Number(input1);
  num2 = Number(input2);
  const sumResult = sum(num1, num2);
  const powResult = powWithSum(sumResult);
  console.log(powResult);
}

function removeLastChar(data) {
  const reg = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/ ]/gim;
  resultData = data.replace(reg, "");
  return resultData;
}

function mission3_2() {
  const [input1] = arguments;
  const removeLastCharResult = removeLastChar(input1);
  console.log(removeLastCharResult);
}

function calculate(r, h) {
  function radiusCal(r) {
    return r * r * Math.PI;
  }
  const radiusCalResult = radiusCal(r);
  const bottomArea = r * 2 * Math.PI * h;

  return radiusCalResult * 2 + bottomArea;
}

function print(num1, num2, calculateResult) {
  console.log(
    "반지름 " +
      num1 +
      ", " +
      "높이가 " +
      num2 +
      " 인 원통의 넓이는 " +
      calculateResult.toFixed(1) +
      " 입니다."
  );
}
function mission3_3() {
  const [input1, input2] = arguments;
  num1 = Number(input1);
  num2 = Number(input2);
  const calculateResult = calculate(num1, num2);
  const printResult = print(num1, num2, calculateResult);
  printResult;
}