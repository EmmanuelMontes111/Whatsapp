import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';

class PlantillaWidget extends StatelessWidget {
  final Chat chat;

  PlantillaWidget({this.chat});

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
                          chat.name,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          'Yesterday',
                          style: TextStyle(
                            color: Color(0xFF757575),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              chat.mostRecentMessage,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFF757575),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
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
