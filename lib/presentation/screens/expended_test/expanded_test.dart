import 'package:lyabs_dev/utils/my_material.dart';

class ExpandedTest extends StatelessWidget {

  const ExpandedTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: colorWhite,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: colorPrimary,
                      )
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: colorPrimary,
                        )
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: colorPrimary,
                        )
                    ),
                  ],
                )
              ),
              const SizedBox(height: 5,),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: colorGreen,
                        )
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  color: colorYellow,
                                )
                            ),
                            const SizedBox(height: 5,),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  color: colorYellow,
                                )
                            ),
                            const SizedBox(height: 5,),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  color: colorYellow,
                                )
                            ),
                          ],
                        )
                    )
                  ],
                )
              ),
              const SizedBox(height: 5,),
              Expanded(
                flex: 2,
                child: Container(
                  color: colorRed,
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

}