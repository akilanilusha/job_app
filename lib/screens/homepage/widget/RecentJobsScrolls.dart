import 'package:flutter/material.dart';

import '../../../services/get_data.dart';

class RecentJobsScrolls extends StatelessWidget {
  const RecentJobsScrolls({
    super.key,
    required this.data,
    required this.size,
  });

  final GetData data;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(data.getJobDetails().length, (index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: size.width,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 169, 169, 169),
                      blurRadius: 20,
                      offset: Offset(0, 8))
                ]),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data.getJobDetails()[index].logo),
                radius: 25,
              ),
              title: Text(
                data.getJobDetails()[index].title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "${data.getJobDetails()[index].companyName} - ${data.getJobDetails()[index].type}",
                style: TextStyle(color: Colors.grey.shade500),
              ),
              trailing: Text(
                data.getJobDetails()[index].time,
                style: TextStyle(color: Colors.red.shade400),
              ),
            ),
          ),
        );
      }),
    );
  }
}
