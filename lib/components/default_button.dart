import 'package:eshop/constants.dart';
import 'package:eshop/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
  });
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56.0),
      child: TextButton(
        onPressed: press(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            kPrimaryColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18.0),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}