import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, this.text, this.press, this.longPress})
      : super(key: key);
  final String? text;
  final Function? press;
  final Function? longPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: kPrimaryColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onLongPress: longPress as void Function()?,
        onTap: press as void Function()?,
        child: Container(
          width: double.infinity,
          height: 49,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text!,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
// return SizedBox(
//       width: double.infinity,
//       height: 49,
//       child: TextButton(
//         style: TextButton.styleFrom(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
//           primary: Colors.white,
//           backgroundColor: kPrimaryColor,
//         ),
//         onPressed: press as void Function()?,
//         child: Text(
//           text!,
//           style: const TextStyle(
//             fontSize: 18,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }