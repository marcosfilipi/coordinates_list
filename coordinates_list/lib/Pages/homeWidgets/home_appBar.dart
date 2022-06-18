import 'package:flutter/material.dart';

AppBar getHomeAppBar() {
  return AppBar(
    title: const Text("Coordinates List"),
    centerTitle: true,
    backgroundColor: Color(0xff0A6D92), //0xff igual #
    actions: [
      IconButton(
        icon: const Icon(Icons.more_vert_rounded),
        onPressed: () {},
      ),
    ],
  );
}
