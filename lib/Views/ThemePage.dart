import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Provider/ThemeProvider.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Theme Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body:Consumer<ThemeProvider>(builder: (context,value,child)
      {return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          value.themeMode==ThemeMode.light?Center(
            child: IconButton(onPressed: (){
              themeProvider.themeModeChange(ThemeMode.dark);
            }, icon: Icon(Icons.dark_mode,size: 50,color: Colors.deepPurple,),
            ),
          ):Center(
            child: IconButton(onPressed: (){
              themeProvider.themeModeChange(ThemeMode.light);

            }, icon: Icon(Icons.dark_mode_outlined,size: 50,color: Colors.white,),
            ),
          ),
        ],
      );
        },
      )
    );
  }
}
