import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/common/model/status.dart';
import 'index.dart';

class StatusScreen extends GetView<StatusController> {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.statusList.length,
      itemBuilder: (context, index) {
        Status status = controller.statusList[index];
        if (index == 0) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5, left: 20),
                child: Text(
                  "Recent Update",
                  // style: Theme.of(context)
                  //     .textTheme
                  //     .titleMedium!
                  //     .copyWith(fontSize: 15),
                ),
              ),
              // const Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2)),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(status.image),
                  ),
                ),
                title: Text(status.name),
                subtitle: Text(" ${status.date}"),
              )
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5, left: 20),
                child: Text(
                  "Recent Viewed",
                  // style: Theme.of(context)
                  //     .textTheme
                  //     .titleMedium!
                  //     .copyWith(fontSize: 15),
                ),
              ),
              // const Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2)),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(status.image),
                  ),
                ),
                title: Text(status.name),
                subtitle: Text(" ${status.date}"),
              )
            ],
          );
        }
      },
    );
  }
}
