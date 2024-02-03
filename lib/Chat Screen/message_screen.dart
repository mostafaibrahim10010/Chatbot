import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stemchatbot/Utils/main_variables.dart';

class MessageScreen extends StatefulWidget {
  final List messages;

  const MessageScreen({Key? key, required this.messages}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView.separated(
      separatorBuilder: (context, index) =>
          const Padding(padding: EdgeInsets.only(top: 10)),
      itemCount: widget.messages.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: widget.messages[index]["isUserMessage"]
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(
                      20
                        // widget.messages[index]["isUserMessage"] ? 0 : 20
                    ),
                    topRight: Radius.circular(
                        // widget.messages[index]["isUserMessage"] ? 0 : 20
                      20
                    ),
                  ),
                  color: widget.messages[index]["isUserMessage"]
                      ? HexColor(mainColor)
                      : Colors.grey.shade800,
                ),
                constraints: BoxConstraints(maxWidth: width * 2 / 3),
                child: Text(
                  widget.messages[index]["message"].text.text[0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
