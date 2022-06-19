// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

getHomeDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xff0A6D92)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.manage_accounts_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Log Out",
                      style: TextStyle(color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.logout_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}
