import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/suraDetails/item_verse.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.length == 0) loadFile('${args.index + 1}');
    return Stack(
      children: [
        Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/bg3.png',
              fit: BoxFit.fill,
            )),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              args.suraName,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: verses.length == 0
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemBuilder: (buildContext, index) {
                    return ItemVerse(verses[index], index + 1);
                  },
                  itemCount: verses.length,
                ),
        ),
      ],
    );
  }

  void loadFile(String fileName) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$fileName.txt');
    List<String> verses = fileContent.split('/n');
    this.verses = verses;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String suraName;
  int index;

  SuraDetailsArgs({required this.suraName, required this.index});
}
