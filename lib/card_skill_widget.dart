import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CardSkillWidget extends StatelessWidget {
  final String nameCard;
  final double percentage;

  const CardSkillWidget(
      {Key? key, required this.nameCard, required this.percentage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(nameCard)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Iniciante'),
                Text('Avançado'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              child: LinearPercentIndicator(
                animation: true,
                lineHeight: 20.0,
                animationDuration: 3000,
                percent: percentage,
                animateFromLastPercent: true,
                linearStrokeCap: LinearStrokeCap.roundAll,
                linearGradient: LinearGradient(
                  colors: <Color>[Color(0xffB07BE6), Color(0xff5BA2E0)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
