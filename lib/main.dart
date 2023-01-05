import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CustomScrollViews(),
    );
  }
}

class CustomScrollViews extends StatelessWidget {
  const CustomScrollViews({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.activeGreen,
            leading: Icon(CupertinoIcons.person_2,color: CupertinoColors.white,size: 26,),
            largeTitle: Text('Home Page',style: TextStyle(fontSize: 20,color: CupertinoColors.white,fontWeight: FontWeight.normal),),
            trailing: Icon(CupertinoIcons.add_circled,color: CupertinoColors.white,size: 26,),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: CupertinoColors.activeGreen.withOpacity(0.5),
                        radius: 22,
                        child: const Icon(CupertinoIcons.person_alt_circle,color: CupertinoColors.black,),
                      ),
                      const SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("User",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                          SizedBox(height: 3,),
                          Text("Successoft Infotech",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: CupertinoColors.systemGrey),),
                        ],
                      ),
                      const Spacer(),
                      const Icon(CupertinoIcons.arrow_right,color: CupertinoColors.black,),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: CupertinoColors.activeGreen.withOpacity(0.5),
                        radius: 22,
                        child: const Icon(CupertinoIcons.home,color: CupertinoColors.black,),
                      ),
                      const SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Home",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                          SizedBox(height: 3,),
                          Text("Successoft Infotech",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: CupertinoColors.systemGrey),),
                        ],
                      ),
                      const Spacer(),
                      const Icon(CupertinoIcons.arrow_right,color: CupertinoColors.black,),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: CupertinoColors.activeGreen.withOpacity(0.5),
                        radius: 22,
                        child: const Icon(CupertinoIcons.settings,color: CupertinoColors.black,),
                      ),
                      const SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Setting",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                          SizedBox(height: 3,),
                          Text("Successoft Infotech",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: CupertinoColors.systemGrey),),
                        ],
                      ),
                      const Spacer(),
                      const Icon(CupertinoIcons.arrow_right,color: CupertinoColors.black,),
                    ],
                  ),
                  const SizedBox(height: 15,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
