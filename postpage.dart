// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';

class Facebookpost extends StatelessWidget {
  const Facebookpost({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 238, 248),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Facebook',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(Icons.search),
              Padding(padding: EdgeInsets.only(right: 1))
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: ListView.separated(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return const ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(),
                                Padding(padding: EdgeInsets.only(right: 10.0)),
                                Column(
                                  children: [
                                    Text('Mohamed Duse'),
                                    Row(
                                      children: [
                                        Text('5 minute'),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0)),
                                        Icon(Icons.public),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        subtitle: Column(
                          children: [
                            Text(
                                'Hooyoyinka nabiga waa 5 Amina bint wahab-way dhashay Nabiga(s) Halimatu sadiya iyo thuweybana—way nuujiyey Umm ayman iyo fatima bint assad na——way koriyen'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: null,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.favorite_border,
                                          color: Colors.red,
                                        ),
                                        Text('love')
                                      ],
                                    )),
                                Padding(padding: EdgeInsets.all(10)),
                                ElevatedButton(
                                    onPressed: null,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.comment_bank_outlined,
                                          color:
                                              Color.fromARGB(255, 93, 139, 238),
                                        ),
                                        Text('comment')
                                      ],
                                    )),
                                Padding(padding: EdgeInsets.all(10)),
                                ElevatedButton(
                                    onPressed: null,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.share,
                                          color: Colors.blue,
                                        ),
                                        Text('share')
                                      ],
                                    )),
                              ],
                            ),
                          ],
                        ),

                        // trailing: Icon(Icons.more_horiz),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(
                      color: Colors.green,
                    ),
                  ),
                )),
            Expanded(
                child: Container(
                    color: Color.fromRGBO(255, 5, 8, 1), child: ListView())),
          ],
        ),
      ),
    );
  }
}
