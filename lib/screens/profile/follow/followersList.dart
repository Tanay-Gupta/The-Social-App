import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';

class FollowersList extends StatefulWidget {
  const FollowersList({Key? key}) : super(key: key);

  @override
  State<FollowersList> createState() => _FollowersListState();
}

List<String> followersList = [
  'Tanmay',
  'Neha Gupta',
  'Reema Verma',
];
List<String> followersUsernameList = [
  '@tanmay',
  '@cute_neha',
  '@verma_reema',
];

class _FollowersListState extends State<FollowersList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          // itemCount: _textEditingController!.text.isNotEmpty
          //     ? accountListSearch!.length
          //     : accountList.length,
          itemCount: followersList.length,
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
                          Text(followersList[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "",
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 2),
                          Text(followersUsernameList[index],
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
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text(
                      "REMOVE",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
