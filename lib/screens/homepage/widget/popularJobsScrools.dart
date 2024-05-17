import 'package:flutter/material.dart';

import '../../../services/get_data.dart';

class PopularJobsScroll extends StatelessWidget {
  const PopularJobsScroll({
    super.key,
    required this.data,
    required this.size,
  });

  final GetData data;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(data.getJobDetails().length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width * 0.75,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 151, 151, 151),
                    blurRadius: 5,
                    offset: Offset(0, 6), // Shadow position
                  ),
                ],
                color: index.isEven == true ? Colors.black : Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: DefaultTextStyle(
                  style: TextStyle(
                      color:
                          index.isEven == true ? Colors.white : Colors.black),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            data.getJobDetails()[index].title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const Icon(
                            Icons.bookmark_add_rounded,
                            color: Colors.grey,
                            size: 27,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(data.getJobDetails()[index].salary),
                          const SizedBox(
                            width: 20,
                          ),
                          Chip(
                            padding: const EdgeInsets.all(4),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            labelPadding: const EdgeInsets.all(0),
                            backgroundColor:
                                const Color.fromARGB(255, 126, 126, 126),
                            label: SizedBox(
                              width: 70,
                              height: 20,
                              child: Text(
                                data.getJobDetails()[index].type,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: index.isEven == true
                                      ? Colors.white
                                      : Colors.black),
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      data.getJobDetails()[index].logo)),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.getJobDetails()[index].companyName,
                                style: const TextStyle(fontSize: 20),
                              ),
                              Text(
                                data.getJobDetails()[index].city,
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 197, 197, 197)),
                              )
                            ],
                          ),
                          const Spacer(),
                          Text(
                            data.getJobDetails()[index].time,
                            style: const TextStyle(color: Colors.red),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
