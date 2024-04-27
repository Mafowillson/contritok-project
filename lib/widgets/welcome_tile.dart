import 'package:flutter/material.dart';

class WelcomeTile extends StatelessWidget {
  final String text;
  final String imgurl;
  const WelcomeTile({
    super.key,
    required this.imgurl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          style: BorderStyle.solid,
        ),
        color: Colors.grey[500],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imgurl,
              height: 40,
            ),
            const SizedBox(width: 10),
            Expanded(child: Text(text)),
          ],
        ),
      ),
    );
  }
}
