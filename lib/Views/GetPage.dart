import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/GetProvider.dart';

class GetPage extends StatelessWidget {
  const GetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Get Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
        future: getProvider.getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Error loading data"),
            );
          } else {
            return Consumer<GetProvider>(builder: (context, value, child) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.result!.data!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 8.0),
                          child: Card(
                            color: Colors.deepPurple.shade100,
                            child: ListTile(
                              leading: CircleAvatar(
                                  backgroundImage: NetworkImage(value
                                      .result!.data![index].avatar
                                      .toString())),
                              title: Text(value.result!.data![index].firstName
                                  .toString()),
                              subtitle: Text(value.result!.data![index].lastName
                                  .toString()),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            });
          }
        },
      ),
    );
  }
}
