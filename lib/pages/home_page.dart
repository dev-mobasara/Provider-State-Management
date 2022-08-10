import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/home_page_controler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: ChangeNotifierProvider<HomePageProvider>(
            create: (context) => HomePageProvider(),
            child: Consumer<HomePageProvider>(
              builder: (context, provider, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Age Eligibility",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text("Enter your age"),
                      ),
                      onChanged: (val) {
                        provider.eligibilityChecker(
                          int.parse(val),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      provider.eligibilityMessage.toString(),
                      style: TextStyle(
                        color: (provider.eligibility == true)
                            ? Colors.green
                            : Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
