import 'package:lyabs_dev/utils/my_material.dart';

class AspectRatioTest extends StatelessWidget {

  const AspectRatioTest({Key? key}) : super(key: key);

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: AspectRatio(
                        aspectRatio: 6 / 3,
                        child: Container(
                          color: colorGreen,
                          child: const Center(
                            child: Text(
                              '6:3',
                              style: TextStyle(
                                  color: colorWhite,
                                  fontSize: textSizeLarge,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Container(
                          color: colorRed,
                          child: const Center(
                            child: Text(
                              '4:3',
                              style: TextStyle(
                                  color: colorWhite,
                                  fontSize: textSizeLarge,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: AspectRatio(
                  aspectRatio: 9 / 16,
                  child: Container(
                    color: colorPrimary,
                    child: const Center(
                      child: Text(
                        '9:16',
                        style: TextStyle(
                          color: colorWhite,
                          fontSize: textSizeLarge,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}