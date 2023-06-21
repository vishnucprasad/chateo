import 'package:chateo/core/colors.dart';
import 'package:flutter/material.dart';

const kHeight5 = SizedBox(
  height: 5,
);

const kHeight = SizedBox(
  height: 10,
);

const kHeight20 = SizedBox(
  height: 20,
);

const kHeight30 = SizedBox(
  height: 30,
);

const kHeight50 = SizedBox(
  height: 50,
);

const kWidth = SizedBox(
  width: 10,
);

const kWidth20 = SizedBox(
  width: 20,
);

const kWidth30 = SizedBox(
  width: 30,
);

const kWidth40 = SizedBox(
  width: 40,
);

const kWidth50 = SizedBox(
  width: 50,
);

const kBaseUrl = "http://192.168.194.218:3000/api/v1";

SnackBar showErrorSnackBar({
  required String? errorMessage,
  required bool isDarkMode,
}) {
  return SnackBar(
    padding: EdgeInsets.zero,
    content: Row(
      children: [
        Container(
          width: 10,
          height: 50,
          color: Colors.red,
        ),
        kWidth,
        const Icon(
          Icons.warning,
          color: Colors.red,
        ),
        kWidth,
        Text(
          errorMessage ?? "Something went wrong",
          style: TextStyle(color: isDarkMode ? lightColor : darkColor),
        )
      ],
    ),
    backgroundColor: isDarkMode ? darkColor : lightColor,
    behavior: SnackBarBehavior.fixed,
  );
}
