import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/ui/widgets/plantilla_widget.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildList(20),
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(PlantillaWidget(
        chat: userTest(i),
      ));
    }

    return listItems;
  }

  Chat userTest(int index) {
    return Chat(
        name: 'Iron Man $index',
        messageDate: 'hoy',
        mostRecentMessage:
            'Y YO... YO SOY IRON MAN $index');
  }
}
