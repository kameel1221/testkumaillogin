import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index]!)),
    );
  }

  Directionality formErrorText({required String error}) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/Error.svg",
            height: getProportionateScreenWidth(15),
            width: getProportionateScreenWidth(15),
          ),
          SizedBox(
            width: getProportionateScreenWidth(5),
            height: getProportionateScreenHeight(5),
          ),
          Text(error),
        ],
      ),
    );
  }
}
