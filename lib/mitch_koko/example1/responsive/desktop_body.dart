import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(color: Colors.lightBlueAccent),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 100,
                    margin: EdgeInsets.all(8),
                    color: Colors.lightBlueAccent,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
