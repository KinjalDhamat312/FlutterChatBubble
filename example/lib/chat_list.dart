import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_3.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_4.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_5.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_6.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_7.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_8.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_9.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: ListView(
        children: <Widget>[
          getTitleText("Clipper 1"),
          getSenderView(ChatBubbleClipper1(type: BubbleType.sendBubble)),
          getReceiverView(ChatBubbleClipper1(type: BubbleType.receiverBubble)),
          SizedBox(
            height: 30,
          ),
          getTitleText("Clipper 2"),
          getSenderView(ChatBubbleClipper2(type: BubbleType.sendBubble)),
          getReceiverView(ChatBubbleClipper2(type: BubbleType.receiverBubble)),
          SizedBox(
            height: 30,
          ),
          getTitleText("Clipper 3"),
          getSenderView(ChatBubbleClipper3(type: BubbleType.sendBubble)),
          getReceiverView(ChatBubbleClipper3(type: BubbleType.receiverBubble)),
          SizedBox(
            height: 30,
          ),
          getTitleText("Clipper 4"),
          getSenderView(ChatBubbleClipper4(type: BubbleType.sendBubble)),
          getReceiverView(ChatBubbleClipper4(type: BubbleType.receiverBubble)),
          SizedBox(
            height: 30,
          ),
          getTitleText("Clipper 5"),
          getSenderView(ChatBubbleClipper5(type: BubbleType.sendBubble)),
          getReceiverView(ChatBubbleClipper5(type: BubbleType.receiverBubble)),
          SizedBox(
            height: 30,
          ),
          getTitleText("Clipper 6"),
          getSenderView(ChatBubbleClipper6(type: BubbleType.sendBubble)),
          getReceiverView(ChatBubbleClipper6(type: BubbleType.receiverBubble)),
          SizedBox(
            height: 30,
          ),
          getTitleText("Clipper 7"),
          getSenderView(ChatBubbleClipper7(type: BubbleType.sendBubble)),
          getReceiverView(ChatBubbleClipper7(type: BubbleType.receiverBubble)),
          SizedBox(
            height: 30,
          ),
          getTitleText("Clipper 8"),
          getSenderView(ChatBubbleClipper8(type: BubbleType.sendBubble)),
          getReceiverView(ChatBubbleClipper8(type: BubbleType.receiverBubble)),
          SizedBox(
            height: 30,
          ),
          getTitleText("Clipper 9"),
          getSenderView(ChatBubbleClipper9(type: BubbleType.sendBubble)),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: getReceiverView(
                ChatBubbleClipper9(type: BubbleType.receiverBubble)),
          )
        ],
      ),
    );
  }

  getTitleText(String title) => Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      );

  getSenderView(CustomClipper clipper) => ChatBubble(
        clipper: clipper,
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(top: 20),
        backGroundColor: Colors.blue,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  getReceiverView(CustomClipper clipper) => ChatBubble(
        clipper: clipper,
        backGroundColor: Color(0xffE7E7ED),
        margin: EdgeInsets.only(top: 20),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: Text(
            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
}
