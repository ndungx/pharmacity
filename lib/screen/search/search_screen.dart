import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/search/components/search_clear.dart';
import 'components/search_item.dart';
import 'components/search_not_found.dart';
import 'components/suggest_keyword.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String bodyState = 'clear';
  final TextEditingController _textEditingController = TextEditingController();
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Material(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              ),
            ),
          ),
          title: _buildSearchField(),
        ),
      ),
      body: _buildPage(bodyState),
    );
  }

  Widget _buildPage(String bodyState) {
    switch (bodyState) {
      case 'clear':
        return const SearchClear();
      case 'found':
        return const SearchItem();
      case 'not found':
        return SearchNotFound(
          searchText: searchText,
        );
      default:
        return Column(
          children: const [
            Text(
              'Tìm kiếm phổ biến',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SuggestKeyword(),
          ],
        );
    }
  }

  Widget _buildSearchField() {
    return SizedBox(
      height: 35,
      child: TextField(
        autofocus: true,
        cursorHeight: 20,
        controller: _textEditingController,
        textInputAction: TextInputAction.done,
        // test screen -------------------
        onChanged: (value) {
          setState(() {
            searchText = value;
          });
          if (value.isEmpty) {
            setState(() {
              bodyState = 'clear';
            });
          } else if (value.length > 10) {
            setState(() {
              bodyState = 'not found';
            });
          } else {
            setState(() {
              bodyState = 'found';
            });
          }
        },
        // ----------------------------
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 4),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kSecondaryColor.withOpacity(.7)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: kSecondaryColor.withOpacity(.7),
              width: 1,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              height: 20,
              color: Colors.grey,
            ),
          ),
          suffixIcon: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                setState(() {
                  bodyState = 'clear';
                });
                _textEditingController.clear();
              },
              child: Icon(
                Icons.highlight_remove,
                size: 25,
                color: kSecondaryColor.withOpacity(.7),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
