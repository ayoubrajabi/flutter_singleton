import 'package:flutter/material.dart';
import 'package:flutter_singleton/injection_container.dart';
import 'package:flutter_singleton/models/sample_model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late TextEditingController _textEditingController;
  SampleModel sampleModel = sl<SampleModel>();

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                    hintText: 'write sample value for first page',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1.5,
                        ))),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                sampleModel.sampleValue = _textEditingController.text;
              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('set value for first page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
