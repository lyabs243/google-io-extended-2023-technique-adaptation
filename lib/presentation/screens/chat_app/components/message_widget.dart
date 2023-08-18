import 'package:lyabs_dev/data/models/message_item.dart';
import 'package:lyabs_dev/utils/my_material.dart';
import 'text_message.dart';

class MessageWidget extends StatelessWidget {

  const MessageWidget({Key? key, required this.message,}) : super(key: key);

  final MessageItem message;

  MainAxisAlignment messageAlignment(MessageItem message) {
    if (message.type == ChatType.sent) {
      return MainAxisAlignment.end;
    } else {
      return MainAxisAlignment.start;
    }
  }

  CrossAxisAlignment circleAvatarAndErrorAlignment(MessageItem message) {
    if (message.type == ChatType.sent) {
      return CrossAxisAlignment.center;
    } else {
      return CrossAxisAlignment.end;
    }
  }

  Widget messageContent(MessageItem message) {
    return TextMessage(message: message);
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: paddingSMedium),
      child: Row(
        mainAxisAlignment: messageAlignment(message),
        crossAxisAlignment: circleAvatarAndErrorAlignment(message),
        children: [
          if (message.type != ChatType.sent) ...[
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://picsum.photos/200/300?random=0'),
            ),
            const SizedBox(width: 10),
          ],
          Expanded(child: messageContent(message)),
        ],
      ),
    );

  }
}
