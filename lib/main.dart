// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('AppBar Widget Example'),
          centerTitle: true,
          elevation: 30.0,
          shadowColor: Colors.green[800],
          toolbarOpacity: 1,
          toolbarHeight: 70,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.favorite),
            IconButton(
                onPressed: () {
                  print('hello');
                },
                icon: Icon(Icons.search)),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: 'person',
              ),
              Tab(
                icon: Icon(Icons.mail),
                text: 'Mail',
              ),
              Tab(
                icon: Icon(Icons.shopping_bag),
                text: 'Shopping',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text("Person")),
            Center(child: Text("Mail")),
            Center(child: Text("Shopping")),
          ],
        ),
      ),
    );
  }
}
