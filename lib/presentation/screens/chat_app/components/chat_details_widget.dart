import 'package:lyabs_dev/data/models/message_item.dart';
import 'package:lyabs_dev/presentation/components/app_edit_text.dart';
import 'package:lyabs_dev/presentation/screens/chat_app/components/message_widget.dart';
import 'package:lyabs_dev/utils/my_material.dart';

class ChatDetailsWidget extends StatelessWidget {

  final bool chatSelected;
  final void Function()? onBack;

  const ChatDetailsWidget({Key? key, this.chatSelected = false, this.onBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<MessageItem> messages = MessageItem.randomMessages();

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(PathImage.chatBackground),
          fit: BoxFit.cover,
        )
      ),
      child: (!chatSelected)?
      Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: colorBlack.withOpacity(0.3),
          ),
          padding: const EdgeInsets.all(paddingSmall),
          child: const Text(
            'Aucune conversation sélectionnée',
            style: TextStyle(
              color: colorWhite,
            ),
          ),
        ),
      ):
      Column(
        children: [
          AppBar(
            backgroundColor: colorWhite,
            elevation: 0,
            leading: Visibility(
              visible: SizeConfig.isMobile,
              child: InkWell(
                onTap: onBack,
                child: Icon(
                  Icons.arrow_back,
                  color: colorBlack.withOpacity(0.3),
                ),
              ),
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
            child: ListView.builder(
              itemCount: messages.length,
              padding: const EdgeInsets.all(10),
              reverse: true,
              itemBuilder: (BuildContext context, int index) {
                return MessageWidget(message: messages[index]);
              }
            ),
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