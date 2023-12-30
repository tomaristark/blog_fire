import 'package:blog_fire/resource/dimens.dart';
import 'package:blog_fire/resource/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:blog_fire/widgets/blog_post_widget.dart';
import 'package:blog_fire/widgets/profile_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const[
         Padding(
           padding: const EdgeInsets.only(top: kSP50x),
           child: SearchBarView(),
         ),
          Padding(
            padding: const EdgeInsets.only(bottom: kSP20x),
            child: TopicView(),
          ),
         Divider(),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: kSP20x,horizontal: kSP20x),
           child: TrendingOnMedium(),
         ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kSP20x),
          child: Column(
            
            children: [
              TrendingBlogs(),
              TrendingBlogs(),
              TrendingBlogs(),
              TrendingBlogs(),
              TrendingBlogs(),
              TrendingBlogs(),
            ],
          )
          ),
          StaffPicksView(),
           Padding(padding: EdgeInsets.symmetric(horizontal: kSP20x,vertical: kSP20x),
          child: RecommendedForYou(),
          ),
          BlogPostWidget(hasButtons: false,),
          BlogPostWidget(hasButtons: false,),
          BlogPostWidget(hasButtons: false,),
          BlogPostWidget(hasButtons: false,),
          BlogPostWidget(hasButtons: false,),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kSP10x,horizontal: kSP20x),
            child: Text(kWhoToFollow,
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
          ),    
          
          ProfileToFollow()

         
        ],
      ),
    );
  }
}

class ProfileToFollow extends StatelessWidget {
  const ProfileToFollow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kSP270x,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
          return const ProfileWidget();
      }),
    );
  }
}

class RecommendedForYou extends StatelessWidget {
  const RecommendedForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Row(
      children: [
        Icon(Icons.file_copy_outlined),
        Padding(padding: EdgeInsets.symmetric(horizontal: kSP10x),
        child: Text(kRecommendedForYou,style: TextStyle(
          fontSize: kFS15x,
          fontWeight: FontWeight.bold
        ),),)
      ],
    );
  }
}

class TrendingBlogs extends StatelessWidget {
  const TrendingBlogs({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child:   Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: Center(
                child: Text("01",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.secondary
                ),
                ),
              )),
            Flexible(
              flex: 4,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    CircleAvatar(radius: kSP10x,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kSP5x),
                      child: Text('Soe Thiha Naung'),
                    ),
        
                  ],),
                  Text("Adaiowhdoaiwnpoidnawpndaiwdonaw",style: TextStyle(
                    fontSize: kFS18x,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  ),
                  Row(
                    children: [
                      Text("1 days ago"),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: kSP5x),
                        child: CircleAvatar(
                          radius: kSP2x,
                        ),
                      ),
                      Text("9 min read "),
                      Icon(Icons.star,color: Colors.yellow,)
                    ],
                  )
                ],
        
              ) 
              ),
        
          ]
        ),
      );
  }
}

class StaffPicksView extends StatelessWidget {
  const StaffPicksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kSP20x),
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kSP20x),
            child: Text(kStaffPick,
            style: TextStyle(
              fontSize: kFS35x,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: kSP20x,vertical: kSP10x),
            child: Text(kStoriesFrom,
            style: TextStyle(
              fontSize: kFS17x,
              color: Colors.white30
            ),),
          ),
          SizedBox(
            height: kSP350x,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: kSP20x),
                  child: StaffPickBlog(),
                );
              })),
          )
        ],
      ));
  }
}
class StaffPickBlog extends StatelessWidget {
  const StaffPickBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kSP250x,
      height: kSP350x,
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(bottom:10 ),
              child: Container(
                width: kSP250x,
                height: kSP180x,
                color: Colors.red,
              ),
            ),
          ),
         const  Flexible(
            flex: 1,
            child: Row(
              children: [
                CircleAvatar(radius: kSP10x,),
                Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSP5x),
              child: Text("Soe Thiha Naung",style: TextStyle(
                color: Colors.white,
                  
              ),),
            ),
              ],
            ),
          ),
          
          Text("Chat GPT,or: How I learned to Stop Worrying and Love Ai",
          style: const TextStyle(
            fontSize: kFS18x,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          Row(
            children: [
              Text("Nov.29",style: TextStyle(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSP5x),
                child: CircleAvatar(radius: kSP2x,),
              ),
              Text("6 min read",style: TextStyle(
                color: Colors.white
              ),)
            ],
          )
        ],
      ),
      
    );
  }
}

class TrendingOnMedium extends StatelessWidget {
  const TrendingOnMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.trending_up,size: kTrendingUpIS,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kSP10x),
          child: Text("Trending on Medium",style: TextStyle(
            fontSize: kFS18x,
            fontWeight: FontWeight.bold
          ),),
        )
      ],
    );
  }
}
class TopicView extends StatelessWidget {
  const TopicView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kSP35x,
      child: ListView.builder(
        padding:const  EdgeInsets.only(left: kSP20x),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.only(left: kSP10x),
            alignment: Alignment.center,
            padding:const  EdgeInsets.symmetric(horizontal: kSP10x,vertical: kSP5x),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSecondary,
              borderRadius: BorderRadius.circular(kSP20x),
            ),
            child: Text("DevOps"),
          );
        })),
    );
  }
}

class SearchBarView extends StatelessWidget {
  const SearchBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Text(kExplore,style: TextStyle(
              fontSize: kFS24x,
              fontWeight: FontWeight.bold
            ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kSP20x),
            child: GestureDetector(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: kSP8x,horizontal: kSP6x),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(kSP10x)
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kSP7x),
                      child: Icon(Icons.search),
                    ),
                    Text(kSearchMedium)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}