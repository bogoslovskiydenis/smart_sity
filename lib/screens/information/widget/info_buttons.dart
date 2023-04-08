import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  const InfoButton(
      {Key? key, required this.text, this.onPressed, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          primary: Theme.of(context).backgroundColor,
          fixedSize: const Size(160, 42),
          side: const BorderSide(color: Colors.black)),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
