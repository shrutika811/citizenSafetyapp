
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'Guidelines.dart';
import 'News.dart';

class SelfAwareness extends StatelessWidget {
  const SelfAwareness({super.key});

  @override
 Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 231, 129, 11),
            centerTitle: true,
            title: Text('Be Aware of fraud!!',style:TextStyle(color:Colors.black,fontSize:19,fontWeight: FontWeight.bold)),
            bottom: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Guidelines',
                  icon: Icon(Icons.info),
                ),
                Tab(
                  text: 'News',
                  icon: Icon(Icons.newspaper),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
             
              Expanded(
                child: TabBarView(children: [
                 Guidelines(),
                 News()
                ]),
              ),
            ],
          ),
        ));
    
  }



}