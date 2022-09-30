import 'package:flutter/material.dart';
import 'package:yoga_app/constants/widgets/custom_button.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              child: Image.network(
                'https://media.istockphoto.com/vectors/first-prize-gold-trophy-iconprize-gold-trophy-winner-first-prize-vector-id1183252990?k=20&m=1183252990&s=612x612&w=0&h=BNbDi4XxEy8rYBRhxDl3c_bFyALnUUcsKDEB5EfW2TY=',
                height: size.height * 0.38,
              ),
            ),
            Text(
              'CONGRATULATIONS',
              style: textStyle(
                textColor: Color(0xff4B5C6B),
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '16',
                      style: textStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Yoga Asans',
                      style: textStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          textColor: Colors.black12.withOpacity(0.6)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '179',
                      style: textStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'kCal',
                      style: textStyle(
                        fontSize: 14,
                        textColor: Colors.black12.withOpacity(0.6),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '00:09',
                      style: textStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Duration',
                      style: textStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        textColor: Colors.black12.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customButton(
                  onPressed: () {},
                  buttonText: 'Do it Again',
                  bgColor: Colors.transparent,
                  textColor: Color(0xff6558F5),
                ),
                customButton(
                  onPressed: () {},
                  buttonText: 'SHARE',
                  bgColor: Colors.transparent,
                  textColor: Color(0xff6558F5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
