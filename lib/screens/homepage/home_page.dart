import 'package:flutter/material.dart';
import 'package:job_app/services/get_data.dart';

import 'widget/RecentJobsScrolls.dart';
import 'widget/appBar.dart';
import 'widget/category.dart';
import 'widget/headerText.dart';
import 'widget/popularJobsScrools.dart';
import 'widget/searchbat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const HeaderText(),
                JobSerchBar(size: size),
                const SizedBox(
                  height: 10,
                ),
                const CategoryText(title: 'Popular Now'),
                const SizedBox(
                  height: 10,
                ),
                PopularJobsScroll(data: data, size: size),
                const SizedBox(
                  height: 10,
                ),
                const CategoryText(title: 'Recent Jobs'),
                RecentJobsScrolls(data: data, size: size)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
