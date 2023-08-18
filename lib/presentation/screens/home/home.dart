import '../../../utils/my_material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle), centerTitle: true,),
        body: ListView(
          children: [
            ListTile(
              title: Text(
                '${AppLocalizations.of(context)!.simpleScreen} [${AppLocalizations.of(context)!.noResponsive}]'
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, pageSimpleScreenNoResponsive);
              },
            ),
            SizedBox(height: 0.01.sh,),
            ListTile(
              title: const Text(
                'LayoutBuilder'
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, pageLayoutBuilder);
              },
            ),
            SizedBox(height: 0.01.sh,),
            ListTile(
              title: const Text(
                'MediaQuery'
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, pageMediaQuery);
              },
            ),
            SizedBox(height: 0.01.sh,),
            ListTile(
              title: const Text(
                'AspectRatio'
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, pageAspectRatio);
              },
            ),
            SizedBox(height: 0.01.sh,),
            ListTile(
              title: const Text(
                'Expanded'
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, pageExpanded);
              },
            ),
          ],
        ),
      ),
    );
  }
}
