import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Card(),
  ));
}
class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  int level=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text("Card"),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level+=1;
          });
        },
        child: Icon(Icons.icecream),
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assests/n.jpg"),
              radius: 70,
            ),
          ),
          Divider(
            height: 90,
            color: Colors.grey[900],
          ),
          Text("Name",
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2
          ),),
          SizedBox(height:10),
          Row(
            children: [
              Expanded(
                child: Text("Umer Hussain",
                  style: TextStyle(
                    color: Colors.amber[200],
                    letterSpacing: 2
                    ,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              //Expanded(child: Image.asset("assests/n.jpg",height: 100,))
            ],
          ),

          SizedBox(height: 40,),
          Text("Father Name",
            style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
            ),),
          SizedBox(height:10),
          Text("Shahid Hussain",
            style: TextStyle(
              color: Colors.amber[200],
              letterSpacing: 2
              ,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          SizedBox(height: 40,),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey,
              ),
              SizedBox(width:10),
              Text("umerhussain@gmail.com",
              style: TextStyle(
                color: Colors.amber[200],
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)

            ],
          ),

          SizedBox(height: 40,),
          Text("Level ",
            style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
            ),),
          SizedBox(height:10),
          Text("$level",
            style: TextStyle(
              color: Colors.amber[200],
              letterSpacing: 2
              ,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),

        ],
      )),

    );
  }
}


