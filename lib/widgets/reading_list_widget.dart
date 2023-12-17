import 'package:blog_fire/resource/dimens.dart';
import 'package:flutter/material.dart';

class ReadingListWidget extends StatelessWidget {
  const ReadingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: kSP260x,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          color: Colors.black12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kSP20x,right: kSP20x,top: kSP20x,bottom: kSP10x),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: kSP12x,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kSP10x),
                        child: Text(
                          "Hein Htet Zaw",
                          style: TextStyle(fontSize: kFS15x),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(vertical: kSP10x),
                    child: Text(
                      "Reading List",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: kFS18x),
                    ),
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                     const SizedBox(
                        child: Row(
                          children: [
                            Text(
                              "46 Stories",
                              style: TextStyle(fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                Icons.lock_rounded,
                                size: kSP15x,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.download_for_offline_outlined)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.more_vert)),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    child: Text("1"),
                    height: kSP110x,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: kSP110x,
                    color: Colors.green,
                    child: Text("1"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                   height: kSP110x,
                    color: Colors.blue,
                    child: Text("1"),
                  ),
                ),
      
              ],
            )
          ],
        ),
      ),
    );
  }
}
