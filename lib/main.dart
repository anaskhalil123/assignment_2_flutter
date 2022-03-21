import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomScaffold(),
    );
  }
}

class CustomScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Scaffold(
        appBar: AppBar(
          title: Text('SECOND ASSIGNMENT'),
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.redAccent,
        drawer: Drawer(
          child: _CustomContainer(),
          backgroundColor: const Color.fromRGBO(228, 194, 194, 0.78),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: const Text('SECOND ASSIGNMENT'),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
            color: Colors.white,
            child: _CustomContainer(),
          ),
        ),
      );
    }
  }
}

class _CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 45,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 35,
          ),
          _CustomText('FIRST ELEMENT'),
          const SizedBox(
            height: 15,
          ),
          _CustomText('SECOND ELEMENT'),
          const SizedBox(
            height: 15,
          ),
          _CustomText('THIRD ELEMENT'),
          const SizedBox(
            height: 15,
          ),
          _CustomText('FOURTH ELEMENT'),
          const SizedBox(
            height: 15,
          ),
          _CustomText('FIFTH ELEMENT'),
          const SizedBox(
            height: 17,
          ),
        ],
      ),
    );
  }
}

class _CustomText extends StatelessWidget {
  var text = '';
  _CustomText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
    );
  }
}
