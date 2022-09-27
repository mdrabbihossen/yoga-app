import 'package:flutter/material.dart';
import 'package:yoga_app/constants/widgets/text_style.dart';

class StartUp extends StatefulWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  State<StartUp> createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              title: Text("Yoga"),
              background: Image.network(
                'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80',
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.thumb_up_alt_rounded),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '16 Minutes || 26 Workouts',
                        style: textStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 2),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => Divider(
                      thickness: 2,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) => ListTile(
                      leading: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Image.network(
                          'https://i.pinimg.com/originals/02/28/74/0228749d03812fc95700955e1a05d42e.gif',
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'Yoga $index',
                        style: textStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        index % 2 == 0 ? "00:20" : "x20",
                        style: textStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.15,
            vertical: size.height * 0.013,
          ),
          child: Text(
            'START',
            style: textStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
