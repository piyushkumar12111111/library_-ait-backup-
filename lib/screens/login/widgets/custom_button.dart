import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final Widget? image;
  final VoidCallback onPressFunction;

  const CustomButton({
    required this.color,
    required this.textColor,
    required this.text,
    required this.onPressFunction,
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
      ),
      child: image != null
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              onPressed: onPressed,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.only(right: kPaddingL),
                    child: image,
                  ),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize:20,
                        ),
                  ),
                ],
              ),
            )
          : TextButton(
              style: TextButton.styleFrom(
                padding:  EdgeInsets.all(kPaddingM),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              onPressed: onPressFunction,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: textColor, fontWeight: FontWeight.w700),
              ),
            ),
    );
  }
}
