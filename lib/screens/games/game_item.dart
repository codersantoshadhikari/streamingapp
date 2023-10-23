import 'package:flutter/material.dart';
import 'package:streamingapp/utils/data.dart';
import 'package:streamingapp/shared/rounded_label.dart';
import 'package:streamingapp/shared/broadcast_item.dart';

class GameItem extends StatelessWidget {
  final Game game;
  final Function onPress;

  GameItem({super.key, required this.game, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    game.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                RoundedLabel(
                  small: true,
                  color: Colors.red,
                  text: "Live",
                ),
              ],
            ),
          ),
          BroadcastItem(
            live: true,
            title: game.subTitle,
            users: game.users,
            imageUrl: game.imageUrl,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
            child: Text(
              game.description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
