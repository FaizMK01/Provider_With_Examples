import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/SliderProvider.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Slider Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderProvider>(builder: (context, sliderProvider, child) {
              return Slider(
                  value: sliderProvider.slider,
                onChanged: (v) {
                  sliderProvider.sliderValue(v);
                },
                  min: 0,
                  max: 100,
                  );
            }),
            SizedBox(
              height: 20,
            ),
            Consumer<SliderProvider>(builder: (context,sliderProvider1,child){
              return Text(
                "Slider Value: ${sliderProvider1.slider.toInt()}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
