import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: _buildList(10));
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(_CallItem(
        isReceivedCall: i % 2 == 0,
        isVideoCall: i % 2 == 0,
      ));
    }

    return listItems;
  }
}

class _CallItem extends StatelessWidget {
  final bool isReceivedCall;
  final bool isVideoCall;

  _CallItem({
    this.isReceivedCall = false,
    this.isVideoCall = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0)
                  .copyWith(top: 12.0),
              child: CircleAvatar(
                radius: 32.0,
                backgroundImage: NetworkImage(
                    'https://66.media.tumblr.com/2f90ca73db664ebc8b2dffbccb85082f/tumblr_pbz878eGyb1w2bgl4o5_250.jpg'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Emmanuel Montes',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            isReceivedCall
                                ? Icons.call_made
                                : Icons.call_received,
                            size: 20.0,
                            color: isReceivedCall
                                ? Theme.of(context)
                                    .floatingActionButtonTheme
                                    .backgroundColor
                                : Colors.red,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'hace unas horas',
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                isVideoCall ? Icons.videocam : Icons.call,
                color:
                    Theme.of(context).floatingActionButtonTheme.backgroundColor,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 88.0,
            top: 8.0,
            right: 16.0,
          ),
          child: Divider(
            height: 0.0,
          ),
        ),
      ],
    );
  }
}
