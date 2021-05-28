import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function selectHandler;
  Result(this.totalScore, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('You did it, Score: $totalScore'),
          RaisedButton(
            child: Text('Reset'),
            onPressed: selectHandler,
          )
        ],
      ),
    );
  }
}
