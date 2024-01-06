import 'package:blog_fire/core/dimens.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Text("Data epjwdpoajwpdjpawdldawdawdawdakwbdalwkdbawlkdabwdkawd",maxLines: 3,overflow: TextOverflow.clip,style: TextStyle(
                    fontSize: kFS18x,
                    fontWeight: FontWeight.bold
                  ),
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
                 Padding(padding: EdgeInsets.symmetric(vertical: kSP5x),
                          child: Text("Selected for you",style: TextStyle(
                            fontSize: kFS12x
                          ),)),
              
              ],
            ),
          ),
          Flexible(

            flex: 2,
          
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [  
                 (hasImage) ?Container(height: kSP70x,width: kSP100x,color: Colors.red,):const SizedBox.shrink(),    
                (hasButtons)? Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: SizedBox(
                    
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_add_outlined)),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.do_not_disturb_on_outlined)),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined))
                          ],
                        ),
                      ),
                ):SizedBox.shrink()
              
                ],
              ),
          ),
          )
        ],
      ),
    );
  }
}