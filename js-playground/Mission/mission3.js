function sum(a, b) {
  return a + b;
}

function powWithSum(num) {
  return Math.pow(num, 2);
}

function mission3_1() {
  const [input1, input2] = arguments;
  data1 = Number(input1);
  data2 = Number(input2);
  const sumResult = sum(data1, data2);
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

function calculate(r) {
  return function (h) {
    const rdata = r * r * Math.PI;
    const bottomArea = r * 2 * Math.PI * h;
    const result = rdata * 2 + bottomArea;
    return print(r, h, result);
  };
}

function print(data1, data2, calculateResult) {
  console.log(
    "반지름 " +
      data1 +
      ", " +
      "높이가 " +
      data2 +
      " 인 원통의 넓이는 " +
      calculateResult.toFixed(1) +
      " 입니다."
  );
}
function mission3_3() {
  const [input1, input2] = arguments;
  data1 = Number(input1);
  data2 = Number(input2);
  calculate(data1)(data2);
}
