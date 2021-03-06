import "package:flutter/material.dart";

class LoadingContainer extends StatelessWidget {
  Widget build(context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: buildContainer(),
          subtitle: buildContainer(),
        ),
        Divider(),
      ],
    );
  }

  Widget buildContainer() {
    return Container(
      color: Colors.grey[300],
      width: 150.0,
      height: 24.0,
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
    );
  }
}