import 'package:lyabs_dev/utils/my_material.dart';

class ChatEmojiWidget extends StatelessWidget {

  const ChatEmojiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.emoji_emotions_outlined,
            color: colorPrimary,
            size: 50.r,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Des emojis seront bientôt disponibles',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colorPrimary,
              fontSize: textSizeMedium,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

}