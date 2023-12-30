

import 'package:blog_fire/resource/dimens.dart';
import 'package:blog_fire/resource/string.dart';
import 'package:flutter/material.dart';
import 'package:blog_fire/static_list/static_list.dart';
import 'package:blog_fire/widgets/blog_post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*0.12), 
          child: AppBar(
            elevation: 0,
            // backgroundColor: Colors.red,
            title: const Padding(
              padding:  EdgeInsets.only(left: kSP15x,top: kSP20x),
              child: Text(kHome,style: TextStyle(
    
                fontSize: kFS25x,
                fontWeight: FontWeight.bold
              ),),
            ),
            centerTitle: false,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: kSP15x,right: kSP10x),
                child: IconButton(onPressed: (){},
                 icon: const Icon(Icons.notifications_outlined,size: kNotificationIS,),),
              )
            ],
            bottom: PreferredSize(
              preferredSize:const  Size.fromHeight(kSP80x), 
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.add)),
                  Expanded(
                    child: TabBar(
                      tabAlignment: TabAlignment.start,
                      padding: EdgeInsets.zero,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: tabTitles.map((String title) => Tab(text: title,)).toList(),
                                ),
                  ),
                ],
              ))
          )
          ),
        body: TabBarView(
          children: List.generate(tabTitles.length,
           (index) => ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount:10 ,
            itemBuilder: ((context, index) {
              return BlogPostWidget();
            }))
            )),
            
      ),
    );
  }
}

