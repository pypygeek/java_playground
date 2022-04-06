function mission1_1() {
  const [input1] = arguments;
  console.log(input1);
}

function mission1_2(arguments1, arguments2) {
  console.log(arguments1 + " " + arguments2);
}

function mission1_3(arguments1, arguments2) {
  console.log(
    "곱하기 결과 입니다 -> " +
      arguments1 * arguments2 +
      "<br>" +
      "나누기 결과 입니다 -> " +
      arguments1 / arguments2
  );
}