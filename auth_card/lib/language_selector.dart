import 'package:flutter/material.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  List<String> languages = ['English', 'French'];
  String selectedLanguage = 'English';
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: Colors.white,
      itemBuilder: (BuildContext context) {
        return languages.map((String language) {
          return PopupMenuItem<String>(
            value: language,
            height: 35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    language,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                if (language != languages.last) Divider(thickness: 1, height: 10,),
              ],
            ),
          );
        }).toList();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            selectedLanguage,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 4),
          Icon(
            isMenuOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            color: Color(0xFF9CA3AF),
            size: 20,
          ),
        ],
      ),
      padding: EdgeInsets.zero,
      onSelected: (String value) {
        setState(() {
          selectedLanguage = value;
          isMenuOpen = false;
        });
      },
      onCanceled: () => setState(() {
        isMenuOpen = false;
      }),
      onOpened: () => setState(() {
        isMenuOpen = true;
      }),
      offset: const Offset(0, 30),
      elevation: 0,
    );
  }
}
