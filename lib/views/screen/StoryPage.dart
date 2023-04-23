import 'package:flutter/material.dart';
import 'package:pr_7_instagram_app/views/utils/ListUtils.dart';
import 'package:stories_editor/stories_editor.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: StoriesEditor(
          giphyKey: '',
          onDone: (String uri) {
            print(uri);
          },
          colorList: MyColor,
          gradientColors: MyGradient,
          middleBottomWidget: Container(),
          fontFamilyList: myFonts,
          isCustomFontList: true,
          onDoneButtonStyle: Container(),
        ),
      ),
    );
  }
}
