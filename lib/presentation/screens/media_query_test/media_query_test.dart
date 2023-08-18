import 'package:lyabs_dev/utils/my_material.dart';

class MediaQueryTest extends StatelessWidget {

  const MediaQueryTest({Key? key}) : super(key: key);

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
          child: Builder(
            builder: (BuildContext context) {

              if (MediaQuery.of(context).orientation == Orientation.landscape) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _componentOne(),
                    const SizedBox(width: 5,),
                    _componentTwo(),
                  ],
                );
              }
              else {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      _componentOne(),
                      const SizedBox(height: 5,),
                      _componentTwo(),
                    ],
                  ),
                );
              }

            },
          ),
        ),
      ),
    );
  }

  Widget _componentOne() {
    return Container(
      color: colorRed,
      width: 250,
      height: 425,
    );
  }

  Widget _componentTwo() {
    return Container(
      color: colorBlack,
      width: 250,
      height: 425,
    );
  }

}