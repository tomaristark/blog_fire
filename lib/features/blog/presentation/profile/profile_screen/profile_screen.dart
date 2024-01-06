
import 'package:blog_fire/core/dimens.dart';
import 'package:blog_fire/core/static_list.dart';
import 'package:blog_fire/core/string.dart';
import 'package:flutter/material.dart';
import 'package:blog_fire/features/blog/presentation/setting/setting_screen/setting_screen.dart';
import 'package:blog_fire/features/blog/presentation/widgets/blog_post_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: false,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) =>[
            SliverAppBar(
              forceMaterialTransparency: false,
              elevation: 5,
              
              title: (innerBoxIsScrolled)?const Text("Hein Htet Zaw",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),):null,
              pinned: true,
              expandedHeight: kSP250x,
              centerTitle: false,
              actions: [
                IconButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SettingScreen()));
                }, icon: const Icon(Icons.settings_outlined))
              ],
              flexibleSpace: const FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background:  Padding(
                  padding: EdgeInsets.only(top: kSP100x),
                  child: ProfileView(),
                ),
                centerTitle: false,
                
              ),
              bottom:  TabBar(
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            tabs: 
            profileScreenTabList.map((e) => Tab(text: e)).toList(),
          ),
          )
          ],
      body:const  TabBarView(children: [
        StoriesView(),
        SizedBox(child: Text("hello"),),
        SizedBox()
      ]),
          ),

      ),
    );
  }
}


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSP15x),
      child: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: kSP10x),
                child: CircleAvatar(radius: kSP35x,),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  Text("Hein Htet Zaw",style: TextStyle(fontWeight: FontWeight.bold,fontSize: kFS30x),),
                  Row(
                    children: [
                      Text("0 followers",style: TextStyle(fontSize: kFS18x),),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: kSP10x),
                        child: CircleAvatar(radius: kSP2x,),
                      ),
                      Text("11 following",style: TextStyle(fontSize: kFS18x))
                    ],
                  )
                ]
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  padding:const EdgeInsets.symmetric(horizontal: kSP30x,vertical: kSP8x),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kSP20x),
                    side: const BorderSide(color:Colors.transparent)
                  ),
                  label: const Text(kViewStats),
                  labelStyle:const  TextStyle(
                    color: Colors.white,
                    fontSize: kFS18x
                  ),
                  ),
                  Chip(
                    color: MaterialStatePropertyAll(Colors.transparent),
                  padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kSP20x),
                  
                  ),
                  label: const Text(kEditYourProfile),
                  labelStyle: const TextStyle(
                   
                    fontSize: kSP18x
                  ),
                  ),
              ],
            ),
          ),
          ])
          );
  }
}




class StoriesView extends StatefulWidget {
  const StoriesView({super.key});

  @override
  State<StoriesView> createState() => _StoriesViewState();
}

class _StoriesViewState extends State<StoriesView> {

  String _selectedValue = "Public";
  List<String> items = ["Public","Unlisted","Response","Draft"];

void _selectCallBack(String ? value){
    setState(() {
      _selectedValue = value!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return 
     SafeArea(
       child: Padding(
         padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
         child: Column(
            children: [
             Padding(
                padding: const EdgeInsets.symmetric(vertical: kSP20x,horizontal: kSP10x),
                child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: kSP40x,
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.secondary),
            borderRadius: BorderRadius.circular(kSP30x)
          ),
          child: DropdownButton(
            dropdownColor: Theme.of(context).colorScheme.primary,
            padding:const  EdgeInsets.symmetric(horizontal: kSP20x),
            underline: const SizedBox.shrink(),
            isExpanded: true,
            value: _selectedValue,
            items: items.map((e) {
             return  DropdownMenuItem(value: e,child: Text(e));
            }).toList(), 
            onChanged: _selectCallBack,
            ),
          
             ),
              ),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return const BlogPostWidget();
                  }),
                  separatorBuilder: ((context, index) {
                    return const Divider();
                  }), ),
              ),
            ],
          ),
       ),
     );
    
  }
}

