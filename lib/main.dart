import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Calculator()));

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String text = '0';
  double numOne = 0;
  double numTwo = 0;
  String result = '0';
  String finalResult = '0';
  String opr = '';
  String preOpr = '';

  void calculation(btnText) {
    if (btnText == 'C') {
      text = '0'; numOne = 0; numTwo = 0; result = '0'; finalResult = '0'; opr = ''; preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      // لا تفعل شيئاً
    } else if (btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }
      if (opr == '+') finalResult = add();
      else if (opr == '-') finalResult = sub();
      else if (opr == 'x') finalResult = mul();
      else if (opr == '/') finalResult = div();
      preOpr = opr;
      opr = btnText;
      result = '';
    } else {
      result = result + btnText;
      finalResult = result;
    }
    setState(() { text = finalResult; });
  }

  String add() => (numOne + numTwo).toString();
  String sub() => (numOne - numTwo).toString();
  String mul() => (numOne * numTwo).toString();
  String div() => (numOne / numTwo).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('آلة حاسبة بسيطة'), backgroundColor: Colors.black),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(text, style: TextStyle(color: Colors.white, fontSize: 80)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            button('7', Colors.grey), button('8', Colors.grey), button('9', Colors.grey), button('/', Colors.orange),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            button('4', Colors.grey), button('5', Colors.grey), button('6', Colors.grey), button('x', Colors.orange),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            button('1', Colors.grey), button('2', Colors.grey), button('3', Colors.grey), button('-', Colors.orange),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            button('C', Colors.red), button('0', Colors.grey), button('=', Colors.orange), button('+', Colors.orange),
          ]),
        ],
      ),
    );
  }

  Widget button(String txt, Color col) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: () => calculation(txt),
        child: Text(txt, style: TextStyle(fontSize: 30)),
        style: ElevatedButton.styleFrom(backgroundColor: col, shape: CircleBorder(), padding: EdgeInsets.all(20)),
      ),
    );
  }
}
