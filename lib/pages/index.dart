import 'package:flutter/material.dart';
import 'package:relay/theme/colours.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          // sidebar
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: size.width * 0.2,
            color: AppColors.greyColours,
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width,
                  child: DrawerHeader(
                    child: Text(
                      "Relay",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                        color: AppColors.purpleAccent,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      // TODO: logic for creating a new tab on this page
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      width: size.width,
                      decoration: BoxDecoration(
                        color: AppColors.purpleAccent,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 5,
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          Text(
                            textAlign: TextAlign.center,
                            "New Request",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text("History"),
              ],
            ),
          ),

          // content
        ],
      ),
    );
  }
}
