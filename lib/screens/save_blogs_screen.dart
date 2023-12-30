// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blog_fire/resource/dimens.dart';
import 'package:blog_fire/resource/static_list.dart';
import 'package:blog_fire/resource/string.dart';
import 'package:flutter/material.dart';

import 'package:blog_fire/widgets/reading_list_widget.dart';

class SaveBlogsScreen extends StatelessWidget {
  const SaveBlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: false,
              body: NestedScrollView(
            headerSliverBuilder: ((context, innerBoxIsScrolled) => [
                  SliverAppBar.medium(
                    
                
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(kYourLibrary),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.green)),
                            onPressed: () {},
                            child: const Text(kNewList))
                      ],
                    ),
                    centerTitle: false,
                    titleTextStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: kFS25x),
                    pinned: false,
                  
                  ),
                  SliverPersistentHeader(
                    delegate: _silverPersistentTabBar(
                       TabBar(
                          
                          indicatorPadding: EdgeInsets.zero,
                          labelPadding: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          tabs: saveBlogScreenTabList.map((e) => Tab(text: e,)).toList(),
                          
                          ),
                      
                      Theme.of(context).appBarTheme.backgroundColor
                    ),
                    pinned: true,
                    floating: true,
                  ),
                ]),
            body: TabBarView(children: [
              ReadingListView(),
              Text("data"),
              Text("data"),
              Text("data"),
            ]),
          ),
         
          ),
        ));
  }
}

class _silverPersistentTabBar extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final Color ? color;
 

  _silverPersistentTabBar(this.tabBar,this.color);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      elevation: 5,
      color: color,
      child: tabBar);
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class ReadingListView extends StatelessWidget {
  const ReadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: kSP20x, horizontal: kSP20x),
              child: ReadingListWidget(),
            );
          }),
    );
  }
}
