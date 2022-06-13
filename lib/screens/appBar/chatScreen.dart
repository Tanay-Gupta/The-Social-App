import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> UserList = [
      'Tanmay Rathore',
      'Tanmay Rathore',
      'Tanmay Rathore',
      'Tanmay Rathore',
    ];
    List<String> messageList = [
      'hello hw r u want to talk with your bro',
      'seen',
      'hello hw r u want to talk with your bro',
      'seen',
    ];
    List<String> MsgNoList = [
      '1',
      '',
      '1',
      '',
    ];
    List<String> timeList = [
      '9:30 am',
      '9:30 am',
      '9:30 am',
      '9:30 am',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('CHAT'),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView.builder(
        itemCount: UserList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/1.png'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(UserList[index],
                            style: TextStyle(
                                fontSize: 15,
                                //fontFamily: "Anmol",
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 2),
                        Text(messageList[index],
                            style: TextStyle(
                              fontSize: 12,
                              //fontFamily: "Anmol",
                              //fontWeight: FontWeight.bold
                            )),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: MsgNoList[index] == ''
                                ? Colors.black
                                : kPrimaryColor,
                            shape: BoxShape.circle,
                            //border: Border.all(color: Colors.grey, width: 0.8)
                          ),
                          child: Text(
                            MsgNoList[index],
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          timeList[index],
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
