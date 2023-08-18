import 'package:lyabs_dev/utils/my_material.dart';

class SimpleScreenNoResponsive extends StatelessWidget {

  const SimpleScreenNoResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Container(
          color: colorWhite,
          padding: const EdgeInsets.symmetric(
            horizontal: 5.5,
            vertical: 3.5,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 140,
                child: Row(
                  children: [
                    Container(
                      color: colorPrimary,
                      width: 130,
                    ),
                    const SizedBox(width: 5,),
                    Container(
                      color: colorPrimary,
                      width: 130,
                    ),
                    const SizedBox(width: 5,),
                    Container(
                      color: colorPrimary,
                      width: 130,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              SizedBox(
                height: 425,
                child: Row(
                  children: [
                    Container(
                      height: 425,
                      width: 130,
                      color: colorGreen
                    ),
                    const SizedBox(width: 5,),
                    Column(
                      children: [
                        Container(
                          height: 138.3,
                          width: 265,
                          color: colorYellow
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          height: 138.3,
                          width: 265,
                          color: colorYellow
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          height: 138.3,
                          width: 265,
                          color: colorYellow
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                height: 255,
                width: 400,
                color: Colors.red,
              ),
            ],
          ),
        ),
      )
    );
  }

}