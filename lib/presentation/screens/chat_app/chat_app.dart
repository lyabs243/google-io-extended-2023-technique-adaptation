import 'package:lyabs_dev/presentation/screens/chat_app/components/chat_details_widget.dart';
import 'package:lyabs_dev/presentation/screens/chat_app/components/chat_emoji_widget.dart';
import 'package:lyabs_dev/presentation/screens/chat_app/components/chat_room_widget.dart';
import 'package:lyabs_dev/utils/my_material.dart';

class ChatApp extends StatelessWidget {

  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Container(
          color: colorWhite,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: ChatRoomWidget(
                  onSelect: (index) {

                  },
                ),
              ),
              Visibility(
                visible: !SizeConfig.isMobile,
                child: const Expanded(
                  flex: 4,
                  child: ChatDetailsWidget(),
                ),
              ),
              Visibility(
                visible: SizeConfig.isDesktop,
                child: const Expanded(
                  flex: 2,
                  child: ChatEmojiWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}