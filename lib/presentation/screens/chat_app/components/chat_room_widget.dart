import 'package:lyabs_dev/utils/my_material.dart';

class ChatRoomWidget extends StatelessWidget {

  final void Function(int index)? onSelect;

  const ChatRoomWidget({Key? key, this.onSelect}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
          child: InkWell(
            onTap: () {
              onSelect?.call(index);
            },
            highlightColor: colorPrimary.withOpacity(0.3),
            hoverColor: colorWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: paddingSMedium, horizontal: paddingMedium),
              child: Ink(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage('https://picsum.photos/200/300?random=$index'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover)
                        ),
                    ),
                    SizedBox(
                      width: paddingMedium.r,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: colorBlack.withOpacity(0.1),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      'John Doe',
                                      style: TextStyle(
                                        color: colorBlack,
                                        fontSize: textSizeSMedium.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "08:00 AM",
                                  style: TextStyle(
                                    color: colorPrimary,
                                    fontSize: textSizeSmall.sp,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'Hello how are you, just want to let you know that I will have a meeting\n',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: colorBlack.withOpacity(0.3),
                                fontSize: textSizeSMedium.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

  }

}