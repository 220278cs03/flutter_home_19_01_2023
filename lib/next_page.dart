import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key, required this.title});

  final String title;

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Name: ',
            ),
            Text(
              '${context.watch<AppController>().name}',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                  itemCount: context.watch<AppController>().list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(context.watch<AppController>().list[index]),
                          GestureDetector(
                            child: Icon(Icons.close),
                            onTap: () {
                              context
                                  .read<AppController>()
                                  .removeFromList(index);
                            },
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
