import 'package:flutter/material.dart';

getHomeDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const [
        DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff0A6D92)),
            child: Text("Luiz Henrique")),
      ],
    ),
  );
}
