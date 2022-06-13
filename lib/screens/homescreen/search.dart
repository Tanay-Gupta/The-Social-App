import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> accountList = [
    'Tanmay',
    'Neha Gupta',
    'Reema Verma',
  ];
  List<String> usernameList = [
    '@tanmay',
    '@cute_neha',
    '@verma_reema',
  ];
  List<String>? accountListSearch;
  List<String>? usernameListSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            searchBar(),
            SizedBox(height: 15),
            _textEditingController!.text.isNotEmpty &&
                    accountListSearch!.length == 0
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search_off,
                              size: 160,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'No results found,\nPlease try different keyword',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                        itemCount: _textEditingController!.text.isNotEmpty
                            ? accountListSearch!.length
                            : accountList.length,
                        itemBuilder: (ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 28,
                                      backgroundImage:
                                          AssetImage('assets/images/1.png'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            _textEditingController!
                                                    .text.isNotEmpty
                                                ? accountListSearch![index]
                                                : accountList[index],
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "",
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 2),
                                        Text(usernameList[index],
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "",
                                              //fontWeight: FontWeight.bold
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 32,
                                  width: 85,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: kPrimaryColor, width: 1),
                                  ),
                                  child: Text(
                                    "FOLLOW",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  )
          ],
        ),
      ),
    );
  }

  Widget searchBar() {
    return Row(
      children: [
        Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
            child: Container(
              padding: EdgeInsets.only(left: 8),
              //width: size.width * 0.85,
              decoration: BoxDecoration(
                  color: Color(0xff151515),
                  borderRadius: BorderRadius.circular(22)),
              child: TextField(
                controller: _textEditingController,
                focusNode: _textFocusNode,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Search here',
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.all(8)),
                onChanged: (value) {
                  setState(() {
                    accountListSearch = accountList
                        //usernameListSearch = usernameList
                        .where(
                            (element) => element.contains(value.toLowerCase()))
                        .toList();
                    if (_textEditingController!.text.isNotEmpty &&
                        accountListSearch!.length == 0) {
                      print(
                          'accountListSearch length ${accountListSearch!.length}');
                    }
                  });
                },
              ),
            ),
          ),
        ),
        Icon(
          Icons.search,
          color: Colors.white,
        ),
      ],
    );
  }
}
