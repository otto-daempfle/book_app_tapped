import 'package:book_app_tapped/utils/constants/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewBookReminder extends StatelessWidget {
  const NewBookReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: MediaQuery.of(context).platformBrightness == Brightness.dark
              ? const Color.fromARGB(159, 109, 109, 109)
              : const Color.fromRGBO(217, 229, 226, 1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(IconConstants.notification),
    );
  }
}
