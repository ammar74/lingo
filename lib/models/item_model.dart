import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  const ItemModel(
      {required this.sound,
      this.image,
      required this.jpName,
      required this.enName});
  final String sound;
  final String? image;
  final String jpName;
  final String enName;

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
