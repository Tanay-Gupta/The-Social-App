import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';

class FollowingList extends StatefulWidget {
  const FollowingList({Key? key}) : super(key: key);

  @override
  State<FollowingList> createState() => _FollowingListState();
}

List<String> followingList = [
  'Tanmay',
  'Reema Verma',
  'Tanmay',
  'Reema Verma',
  'Neha Gupta',
  'Tanmay',
  'Reema Verma',
  'Neha Gupta',
  'Reema Verma',
];
List<String> followingUsernameList = [
  '@tanmay',
  '@cute_neha',
  '@cute_neha',
  '@tanmay',
  '@verma_reema',
  '@verma_reema',
  '@tanmay',
  '@verma_reema',
  '@verma_reema',
];

class _FollowingListState extends State<FollowingList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          // itemCount: _textEditingController!.text.isNotEmpty
          //     ? accountListSearch!.length
          //     : accountList.length,
          itemCount: followingList.length,
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
                        backgroundImage: AssetImage('assets/images/1.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(followingList[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "",
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 2),
                          Text(followingUsernameList[index],
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
                      //color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: kPrimaryColor, width: 1),
                    ),
                    child: Text(
                      "UNFOLLOW",
                      style: TextStyle(fontSize: 12, color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
