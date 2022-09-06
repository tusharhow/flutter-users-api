import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_users_api/app/controllers/users_controller.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<UsersController>(context);
    // with this we can use our controller
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Users'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepPurple,
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.users.length,
                      itemBuilder: (context, index) {
                        //final eachUser = controller.users[index].data![index];
                        return Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.08,
                          child: Row(
                            children: [
                              Text(
                                controller.users[index].data[index].id
                                    .toString(),
                              )
                            ],
                          ),
                        );
                      }))
        ],
      ),
    );
  }
}
