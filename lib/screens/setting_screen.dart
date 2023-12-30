import 'package:blog_fire/resource/dimens.dart';
import 'package:blog_fire/resource/string.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../resource/enums.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(kSettings),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SettingHeaderText(text: kAccount,),
          SettingsWidget(text: kMember,
          trailing: Icon(Icons.star,color: Colors.yellow,),
          onTap: (){
              print("object");
          },
          ),
          SettingsWidget(text: kStoryStats,
          onTap: (){

          },
          ),
          SettingsWidget(text: kAccount,
          onTap: (){

          },
          ),
         const  SettingHeaderText(text: kConfigureMedium),
          SettingsWidget(text:kCustomYourInterests,
          onTap: (){

          },
          ),
          SettingsWidget(text: kTheme,
          
          trailing: Text("Light",
          style: TextStyle(decoration: TextDecoration.underline,fontSize: 14,color: Theme.of(context).colorScheme.secondary),),
          onTap: (){
            showThemeDialog(context);
          },),
          SettingsWidget(text: kPushNotifications,
          onTap: (){},),
          SettingsWidget(text: kEmailNotification,
          onTap: (){},
          ),
          SettingsWidget(text: kDownloadedContent,onTap: (){},),
          const SettingHeaderText(text: kSocial),
          SettingsWidget(
            leading: const Icon(Icons.radar),
            text: kContentTwitter,onTap: (){},),
          SettingsWidget(
            leading: const Icon(Icons.radar),
            text: kConnectFacebook,onTap: (){},),
          const SettingHeaderText(text: kAboutMedium,),
          SettingsWidget(text: kHelp, onTap: (){}),
          SettingsWidget(text: kTermsOfService, onTap: (){}),
          SettingsWidget(text: kPrivacyPolicy, onTap: (){}),
          SettingsWidget(text: kRateOnThePlayStore, onTap: (){}),
          const SettingHeaderText(text: kAppControls),
          SettingsWidget(text: kDisableImageLoading, onTap: (){}),
          SettingsWidget(text: kSignOut, onTap: (){}),
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: kSP10x,horizontal: kSP20x),
            child: Text("Version"),
          )
        ],
      ),
    );
  }

void showThemeDialog(BuildContext context) =>showDialog(context: context, 
   builder: (context)=> SimpleDialog(
    children: [
      ListTile(
        title: Text(ThemeOptions.light.name),
        onTap: (){
          Get.changeThemeMode(ThemeMode.light);
          Navigator.pop(context);
        },
        ),
      ListTile(title: Text(ThemeOptions.dark.name),
      onTap: (){
          Get.changeThemeMode(ThemeMode.dark);
          Navigator.pop(context);
      },),
      ListTile(title: Text(ThemeOptions.system.name),
      onTap: (){
        Get.changeThemeMode(ThemeMode.system);
        Navigator.pop(context);
      }),
    ],
   )
   );
  
}

class SettingHeaderText extends StatelessWidget {
  const SettingHeaderText({
    super.key, required this.text,
  });
 final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,bottom: 20,left: 20),
      child: Text(text,style:  TextStyle(
        fontSize: 18,
        color:Theme.of(context).colorScheme.onSecondary,
        fontWeight: FontWeight.w500
      ),),
    );
  }
}

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key,required this.text, required this.onTap, this.trailing, this.leading,});

final String text;
final VoidCallback onTap;
final Widget ? trailing;
final Widget ? leading;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      splashColor: Colors.grey,
      onTap: onTap,
      leading: leading,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          width: 0.04
        )
      ),
      tileColor: Theme.of(context).colorScheme.onPrimary,
      title: Text(text,),
      trailing: trailing,
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}