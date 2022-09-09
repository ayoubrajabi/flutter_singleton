import 'package:flutter/material.dart';
import 'package:flutter_singleton/injection_container.dart';
import 'package:flutter_singleton/models/sample_model.dart';
import 'package:flutter_singleton/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  SampleModel sampleModel = sl<SampleModel>();
  String value = 'sample value';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value),
            const SizedBox(
              height: 60.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  value = sampleModel.getSampleValue;
                });
              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Update above text from second page'),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Go to second Page   -->'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
