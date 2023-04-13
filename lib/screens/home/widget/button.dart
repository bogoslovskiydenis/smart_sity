import 'package:flutter/material.dart';
import 'package:smart_sity/screens/information/information.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key, required this.text, this.onPressed, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        showModalBottomSheet<void>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 400,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      title: const Text('News',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24)),
                      onTap: () => {},
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                        title: const Text(
                          'Attractions in AR',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        ),
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => InformationScreen()))),
                    const Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                      title: const Text(
                        'Book a Tour',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24),
                      ),
                      onTap: () => {},
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                      title: const Text('Reviews',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24)),
                      onTap: () => {},
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          primary: Theme.of(context).backgroundColor,
          fixedSize: const Size(180, 42),
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
