import 'package:flutter/material.dart';
import 'package:lingo/components/list_item.dart';
import 'package:lingo/models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> familyMembers = const [
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichi',
        enName: 'Father'),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'haha',
        enName: 'Mother'),
    ItemModel(
        sound: 'sounds/family_members/grand_father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'sofu',
        enName: 'GrandFather'),
    ItemModel(
        sound: 'sounds/family_members/grand_mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'GrandMother'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'Son'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume ',
        enName: 'Daughter'),
    ItemModel(
        sound: 'sounds/family_members/younger brother.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otouto',
        enName: 'Younger Brother'),
    ItemModel(
        sound: 'sounds/family_members/younger_sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imouto',
        enName: 'Younger Sister'),
    ItemModel(
        sound: 'sounds/family_members/older_brother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani',
        enName: 'Elder Brother'),
    ItemModel(
        sound: 'sounds/family_members/older_sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'Elder Sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Family Members'),
          backgroundColor: const Color(0xff040D12),
        ),
        body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) => ListItem(
              color: const Color(0xff5C8374), item: familyMembers[index]),
        ));
  }
}
