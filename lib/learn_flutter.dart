import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: isSwitch ? Colors.black :Colors.white,
      appBar: AppBar(
        title: Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: (){
          debugPrint('help');
        }, icon: Icon(Icons.help))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/DSC_0428.JPG', height: 150, width: 150),
            SizedBox(height: 10),
            const Divider(color: Colors.blue),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              width: double.infinity,
        
              color: Colors.blueAccent,
              child: const Center(
                child: Text(
                  'Hello Flutter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
        
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.blue :Colors.amber,
              ),
              onPressed: () {
                debugPrint('Elevated Btn');
              },
              child: Text('Elevated Btn'),
            ),
        
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                 backgroundColor: isSwitch ? Colors.red :Colors.orange,
              ),
              onPressed: () {
                debugPrint('Outlined Btn');
              },
              child: Text('Outlined Btn'),
            ),
        
            TextButton(
              onPressed: () {
                debugPrint(' TextButton Btn');
              },
              child: Text(' TextButton Btn'),
            ),
        
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Gesture ');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.lightBlueAccent,
                  ),
                  Text('row Widget'),
                  Icon(Icons.local_fire_department, color: Colors.greenAccent),
                ],
              ),
            ),
            Switch(value: isSwitch , onChanged: (bool newBool){
              setState(() {
                isSwitch=newBool;
              });
            }),
        
            Checkbox(value: isCheckbox, onChanged: (bool? newBool){
              setState(() {
                isCheckbox=newBool;
              });
            },),
        
         
            Image.network('https://stimg.cardekho.com/images/carexteriorimages/630x420/BMW/M5-2025/11821/1719462197562/front-left-side-47.jpg?impolicy=resize&imwidth=480'),
          
        
          ], //children
        ),
      ),
    );
  }
}
