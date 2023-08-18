import 'package:lyabs_dev/presentation/screens/chat_app/components/chat_details_widget.dart';
import 'package:lyabs_dev/presentation/screens/chat_app/components/chat_emoji_widget.dart';
import 'package:lyabs_dev/presentation/screens/chat_app/components/chat_room_widget.dart';
import 'package:lyabs_dev/utils/my_material.dart';

class ChatApp extends StatefulWidget {

  const ChatApp({Key? key}) : super(key: key);

  @override
  ChatAppState createState() {
    return ChatAppState();
  }

}


class ChatAppState extends State<ChatApp> {

  bool chatSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Container(
          color: colorWhite,
          child: Row(
            children: [
              Visibility(
                visible: !SizeConfig.isMobile || !chatSelected,
                child: Expanded(
                  flex: 2,
                  child: ChatRoomWidget(
                    onSelect: (index) {
                      setState(() {
                        chatSelected = true;
                      });
                    },
                  ),
                ),
              ),
              Visibility(
                visible: !SizeConfig.isMobile || chatSelected,
                child: Expanded(
                  flex: !chatSelected? 6 : 4,
                  child: ChatDetailsWidget(
                    chatSelected: chatSelected,
                    onBack: () {
                      setState(() {
                        chatSelected = false;
                      });
                    },
                  ),
                ),
              ),
              Visibility(
                visible: SizeConfig.isDesktop && chatSelected,
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