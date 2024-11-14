// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class SearchDropdown extends StatefulWidget {
  const SearchDropdown({super.key});
  @override
  State<SearchDropdown> createState() => _SearchDropdownState();
}

class _SearchDropdownState extends State<SearchDropdown> {
  String? _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: SearchField(
          searchInputDecoration: SearchInputDecoration(
            hintText: "Select a country",
            hintStyle: const TextStyle(fontSize: 12),
            searchStyle: const TextStyle(fontSize: 12),
            border: InputBorder.none,
          ),
          onTap: () {
            setState(() {
              _selectedCountry = _selectedCountry;
            });
          },
          suggestions: [
            SearchFieldListItem('Bangladesh'),
            SearchFieldListItem('India'),
            SearchFieldListItem('Sri Lanka'),
            SearchFieldListItem('Afghanistan'),
            SearchFieldListItem("Bhutan"),
          ],
        ),
      ),
    );
  }
}
