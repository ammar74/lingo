import 'package:flutter/material.dart';
import 'package:lingo/components/category_item.dart';
import 'package:lingo/screens/colors_page.dart';
import 'package:lingo/screens/family_members.dart';
import 'package:lingo/screens/numbers_page.dart';
import 'package:lingo/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2E8C6),
      appBar: AppBar(
        title: const Text('Lingo'),
        backgroundColor: const Color(0xff040D12),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NumbersPage(),
                ),
              );
            },
            categoryName: 'Numbers',
            categoryColor: const Color(0xff183D3D),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FamilyMembersPage(),
                ),
              );
            },
            categoryName: 'Family Members',
            categoryColor: const Color(0xff5C8374),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ColorsPage(),
                ),
              );
            },
            categoryName: 'Colors',
            categoryColor: const Color(0xff96B6C5),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhrasesPage(),
                ),
              );
            },
            categoryName: 'Phrases',
            categoryColor: const Color(0xffADC4CE),
          ),
        ],
      ),
    );
  }
}
