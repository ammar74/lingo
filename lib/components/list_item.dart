import 'package:flutter/material.dart';
import 'package:lingo/models/item_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.color, required this.item})
      : super(key: key);

  final ItemModel item;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          item.image == null
              ? const SizedBox()
              : Container(
                  color: const Color(0xff93B1A6),
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    item.image!,
                  ),
                ),
          const Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Text(
                item.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              )
            ],
          ),
          const Spacer(
            flex: 8,
          ),
          IconButton(
            onPressed: () {
              //play sound
              item.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 32,
            ),
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
