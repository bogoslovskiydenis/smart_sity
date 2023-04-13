import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  const InfoButton(
      {Key? key, required this.text, this.onPressed, required this.textColor,required this.image })
      : super(key: key);

  final String text;
  final Color textColor;
  final Function()? onPressed;
  final String? image;

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
        child: Row(
          children: [
            
            Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: textColor),
            ),
            Container(height: 20,width: 20, child: Image.asset(image!)),
          ],
        ),
      ),
    );
  }
}
