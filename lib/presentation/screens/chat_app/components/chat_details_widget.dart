import 'package:flutter/cupertino.dart';
import 'package:lyabs_dev/presentation/components/app_edit_text.dart';
import 'package:lyabs_dev/utils/constants.dart';
import 'package:lyabs_dev/utils/my_material.dart';

class ChatDetailsWidget extends StatelessWidget {

  const ChatDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(PathImage.chatBackground),
          fit: BoxFit.cover,
        )
      ),
      child: Column(
        children: [
          AppBar(
            backgroundColor: colorWhite,
            elevation: 0,
            leading: InkWell(
              child: Icon(
                Icons.arrow_back,
                color: colorBlack.withOpacity(0.3),
              ),
              onTap: () {

              },
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                    color: colorBlack,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  'En ligne',
                  style: TextStyle(
                    color: colorBlack.withOpacity(0.3),
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          AppEditText(
            'Ecrivez votre message',
            TextEditingController(),
            backgroundColor: colorWhite,
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {

                  },
                  child: const SizedBox(
                    child: Icon(
                      Icons.emoji_emotions,
                    ),
                  ),
                ),
                const SizedBox(
                  width: paddingMedium,
                ),
                InkWell(
                  onTap: () {

                  },
                  child: const SizedBox(
                    child: Icon(
                      Icons.send,
                      color: colorPrimary,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}