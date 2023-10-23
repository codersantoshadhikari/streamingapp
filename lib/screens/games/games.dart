import 'package:flutter/material.dart';
import 'package:streamingapp/utils/constants.dart';
import 'package:streamingapp/utils/data.dart';
import 'package:streamingapp/screens/games/games_all.dart';
import 'package:streamingapp/screens/games/game_detail.dart';

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  Widget currentWidgetView = GamesAll(
    onPress: () {},
  );

  @override
  void initState() {
    super.initState();
    switchTo("games_all", null);
  }

  switchTo(String widgetName, Game? game) {
    setState(() {
      switch (widgetName) {
        case "games_all":
          currentWidgetView = GamesAll(onPress: (game) {
            switchTo("game_detail", game);
          });
          break;
        case "game_detail":
          currentWidgetView = GameDetail(
              game: game!,
              onPress: () {
                switchTo("games_all", null);
              });
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        child: currentWidgetView,
      ),
    );
  }
}
