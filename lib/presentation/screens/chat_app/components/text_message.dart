import 'package:lyabs_dev/data/models/message_item.dart';

import '../../../../utils/my_material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageItem message;

  CrossAxisAlignment messageAlignment() {
    if (message.type == ChatType.sent) {
      return CrossAxisAlignment.end;
    } else {
      return CrossAxisAlignment.start;
    }
  }

  EdgeInsetsGeometry paddingTime() {
    if (message.type == ChatType.sent) {
      return const EdgeInsets.only(right: 5, top: 5);
    } else {
      return const EdgeInsets.only(left: 5, top: 5);
    }
  }

  EdgeInsetsGeometry paddingMessage() {
    if (message.type == ChatType.sent) {
      return const EdgeInsets.only(left: 70);
    } else {
      return const EdgeInsets.only(right: 70);
    }
  }

  FontWeight fontWeightMessage(){
    if (message.type == ChatType.sent) {
      return FontWeight.normal;
    } else {
      return FontWeight.w600;
    }
  }

  Color messageBgColor(BuildContext context) {
    if (message.type == ChatType.sent) {
      return colorPrimary;
    } else {
      return colorWhite;
    }
  }

  Color textBgColor(BuildContext context) {
    if (message.type == ChatType.sent) {
      return colorWhite;
    } else {
      return colorBlack;
    }
  }


  Color messageTextColor(BuildContext context) {
    if (message.type == ChatType.sent) {
      return const Color(0XFF0E0E0E);
    } else {
      return const Color(0XFFF2F2F2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: messageAlignment(),
      children: [
        Padding(
          padding: paddingMessage(),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: messageBgColor(context),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              message.message,
              style: TextStyle(
                  color: textBgColor(context),
                  fontSize:textSizeSMedium.sp,
                fontWeight: fontWeightMessage()
              ),
            ),
          ),
        ),
        Padding(
          padding: paddingTime(),
          child: Text(
              message.timeDetails,
              style: TextStyle(
                  color: colorBlack.withOpacity(0.8),
                  fontSize:textSizeSmall.sp
                 )),
        )
      ],
    );
  }
}
