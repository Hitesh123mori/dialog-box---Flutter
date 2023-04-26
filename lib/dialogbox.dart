import 'package:flutter/material.dart';

class dialogbox extends StatefulWidget {
  const dialogbox({Key? key}) : super(key: key);

  @override
  State<dialogbox> createState() => _dialogboxState();
}

class _dialogboxState extends State<dialogbox> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog box"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("Demo Alert"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context) ;
                    }, child:Text("Close")) ,
                  ],
                ) ;
              }) ;
            },
            child: Text("Show Dialog"),
          ),
        ),
      ),
    );
  }
}
