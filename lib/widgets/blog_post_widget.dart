import 'package:blog_fire/resource/dimens.dart';
import 'package:flutter/material.dart';

class BlogPostWidget extends StatelessWidget {
  const BlogPostWidget({
    super.key,this.hasButtons=true,this.hasImage=true, 
  });
  final bool hasButtons ;
  final bool hasImage;
  // final String authorName;
  // final String  contentTitle;
  // final String  contentDate;
  // final String contentTime;
  


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kSP20x,vertical: kSP10x),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
         const  Row(
            children: [
              CircleAvatar(radius: kSP10x,),
              Padding(
                padding: EdgeInsets.only(left: kSP5x),
                child: Text("Soe Thiha Naung"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Text("Data epjwdpoajwpdjpawdkajnwodaweqw",maxLines: 3,overflow: TextOverflow.clip,style: TextStyle(
                  fontSize: kFS18x,
                  fontWeight: FontWeight.bold
                ),),
              ),
              (hasImage) ?Container(height: kSP70x,width: kSP100x,color: Colors.red,):const SizedBox.shrink()
            ],
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: kSP5x),
            child: Row(
              children: [
                Text("jun14 "),
                CircleAvatar(radius: kSP2x,),
                Text("5 min read"),
                Padding(
                  padding: EdgeInsets.only(left: kSP2x),
                  child: Icon(Icons.star,color: Colors.yellow,),
                )
              ],
            ),
          ),
          (hasButtons) ? Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 const Badge(
                  smallSize: kSP30x,
                  largeSize: kSP30x,
                  backgroundColor: Colors.black38,
                  label: Padding(padding: EdgeInsets.symmetric(vertical: kSP5x),
                    child: Text("Selected for you",style: TextStyle(
                      fontSize: kFS12x
                    ),)),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_add_outlined)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.do_not_disturb_on_outlined)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined))
                    ],
                  ),
                )
              ],
            ),
          ):const SizedBox.shrink()
        ],
      ),
    );
  }
}