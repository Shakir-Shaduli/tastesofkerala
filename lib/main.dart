import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }}
  class WelcomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Image(
                image:AssetImage('images/taste.jpg'),
              ),
              Padding(
                padding:EdgeInsets.only(top:10 ),
                child: Container(
                  child: Text('Welcome to',textAlign:TextAlign.center,
                    style:TextStyle(
                        color: Colors.lightGreen[600],
                        fontSize:20),
                  ),
                ),
              ),
              Container(
                child: Text('FAMILY SUPERMARKET',
                  style:TextStyle(
                      color:Colors.lightGreen[600],
                      fontWeight: FontWeight.bold,
                      fontSize:20
                  ) ,),
              ),
              Padding(
                padding:EdgeInsets.only(top: 30),
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      gradient:LinearGradient(
                          begin:Alignment.topCenter,
                          end:Alignment(0.0,0.7) ,
                          colors: [
                            Colors.lightGreen[800],
                            Colors.lightGreen[600],
                            Colors.lightGreen[800]
                          ]
                      )
                  ),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>SecondPage()
                      ),);
                    },
                    child:Text('Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('New customer?',style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15),
                    ),
                    Text('Sign Up',style:
                    TextStyle(
                        color: Colors.lightGreen[900],
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                    ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:Stack(
          children: <Widget>[
                ClipPath(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment(0.0, 0.5),
                            colors: [
                              Colors.lightGreen[900],
                              Colors.lightGreen
                            ]
                        )
                    ),
                    height: 250,
                    width: 1000,
                  ),
                  clipper: MyClipper(),
                ),
                Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: 250,
                              height: 300,
                              decoration:BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0,3)
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black12,
                                    width:1
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 155),
                            child: Image(
                              image:AssetImage('images/logo.jpg'),
                              height: 80,
                              width: 70,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 70,top: 90,right: 70),
                            child: Container(
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Mobile No.',labelStyle:TextStyle(
                                    color: Colors.grey)
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:70,top: 150,right: 70),
                            child: Container(
                              height: 50,
                              child: TextField(
                                cursorWidth:20,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide:BorderSide(
                                        color: Colors.grey
                                      )
                                    ),
                                    labelText: 'Password',labelStyle:TextStyle(
                                  color: Colors.grey
                                )

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 170,top: 210),
                            child: Text('Forgot Password?',
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                                fontSize: 15) ,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:120,top: 240),
                            child:Container(
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  gradient:LinearGradient(
                                      begin:Alignment.topCenter,
                                      end:Alignment(0.0,0.7) ,
                                      colors: [
                                        Colors.lightGreen[800],
                                        Colors.lightGreen[600],
                                        Colors.lightGreen[800]
                                      ]
                                  )
                              ),
                              child:FlatButton(
                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(
                                    builder: (context)=>ThirdPage()
                                ),);
                              },
                              child:Text('Sign In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90,top: 330),
                            child: Text('Dont have account?',style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                                fontSize: 15
                            ),),
                          ),
                          Padding(
                            padding:EdgeInsets.only(left: 230,top: 330) ,
                            child: Text('Sign Up',style:
                            TextStyle(
                                color: Colors.lightGreen[800],
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),

            );
  }
}
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0.0,size.height-30);
    path.quadraticBezierTo(1/2*size.width,size.height , size.width, size.height-30);
    path.lineTo(size.width,0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)=>false;

}
class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int _currentindex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BottomNavigationBar(
              currentIndex:_currentindex ,
              selectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              onTap:(index){
                setState(() {
                  _currentindex=index;
                });
              },
              backgroundColor: Color(0xffA1C359),
              items: [
                BottomNavigationBarItem(
                    icon:IconButton(onPressed:(){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>ThirdPage()
                      ),);
                    },icon: Icon(Icons.home,color: Colors.white,)),
                    title:Container()
                ),
                BottomNavigationBarItem(
                    icon: IconButton(onPressed:(){},icon:Icon(Icons.search,color: Colors.lightGreen[900],)),
                    title:Container()
                ),
                BottomNavigationBarItem(
                  icon: IconButton(onPressed:(){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context)=>MyCart()
                    ),);
                  },icon:Icon(Icons.shopping_cart,color: Colors.lightGreen[900],)),
                  title:Container()
                ),
                BottomNavigationBarItem(
                    icon: IconButton(onPressed:(){
    Navigator.push(context,MaterialPageRoute(
    builder: (context)=>Account()
    ),);
                    },icon: Icon(Icons.perm_identity,color: Colors.lightGreen[900],)),
                    title:Container()
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        extendBody: true,
        body:
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('images/logo.jpg'),
                    height: 40,
                    width: 40,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 270,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            labelText: 'Your location', labelStyle: TextStyle(
                            color: Colors.grey)
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 240),
                      child: CircleAvatar(
                       backgroundColor:Colors.lightGreen[400],
                        radius: 15,
                        child: Icon(Icons.location_on,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Image(
              image: AssetImage('images/sale3.jpg'),
              height: 180,
              width: 1500,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10,bottom: 10),
                  child: Text('SHOP BY CATEGORIES', style:
                  TextStyle(
                      color: Colors.lightGreen[800],
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120,bottom: 10),
                  child: Text('See More >',
                    style: TextStyle(
                        color: Colors.lightGreen[800],
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.lightGreen[200],
              height: 120,
              width: 1000,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [BoxShadow(
                                blurRadius: 10,color: Colors.grey,spreadRadius:2,
                                offset: Offset(0,3)
                            )],
                          ),
                          child: CircleAvatar(
                            child: IconButton(
                              onPressed: (){
    Navigator.push(context,MaterialPageRoute(
    builder: (context)=>Fruits()
    ),);
    },
                              icon: Image.asset('images/fruits.png',
                                height: 50,
                                color: Colors.lightGreen[900],),
                            ),
                            radius: 40,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.lightGreen[900],

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [BoxShadow(
                                blurRadius: 10,color: Colors.grey,spreadRadius:2,
                                offset: Offset(0,3)
                            )],
                          ),
                          child: CircleAvatar(
                            child: Image.asset('images/vegetable.png',
                              height: 50,
                              color: Colors.lightGreen[900],),
                            radius: 40,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.lightGreen[900],

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [BoxShadow(
                                blurRadius: 10,color: Colors.grey,spreadRadius:2,
                                offset: Offset(0,3)
                            )],
                          ),
                          child: CircleAvatar(
                            child: Image.asset('images/boiled.png',
                              height: 50,
                              color: Colors.lightGreen[900],),
                            radius: 40,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.lightGreen[900],

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                                shape: BoxShape.circle,
                            boxShadow: [BoxShadow(
                              blurRadius: 10,color: Colors.grey,spreadRadius:2,
                              offset: Offset(0,3)
                            )],
                          ),
                          child: CircleAvatar(
                            child: Image.asset('images/discount.png',
                              height: 50,
                              color: Colors.lightGreen[900],),
                            radius: 40,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.lightGreen[900],

                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5),
                        child: Text('Fruits',style: TextStyle(
                          color: Color(0xff5A5A5A)
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 5),
                        child: Text('Vegetable',style: TextStyle(
                            color: Color(0xff5A5A5A)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35,top: 5),
                        child: Text('Chicken',style: TextStyle(
                            color: Color(0xff5A5A5A)),
                        ),
                      ),
                      Padding(
                        padding: const  EdgeInsets.only(left: 40,top: 5),
                        child: Text('Special',style: TextStyle(
                            color: Color(0xff5A5A5A)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,right: 250),
              child: Text('Best Deals',style:
                TextStyle(
                  color: Colors.lightGreen[900],
                  fontWeight:FontWeight.bold

                ),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey
                          )
                          ),
                        child: Image(
                          image: AssetImage('images/logo2.jpg'),
                          width: 100,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: Image(
                          image: AssetImage('images/logo3.jpg'),
                          width: 100,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: Image(
                          image: AssetImage('images/logo1.png'),
                          width: 100,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: Image(
                          image: AssetImage('images/logo7.JPG'),
                          width: 100,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,right: 250),
              child: Text('Best Products',style:
              TextStyle(
                  color: Colors.lightGreen[900],
                  fontWeight:FontWeight.bold
              ),),
            ),SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: Image(
                          image: AssetImage('images/logo4.jpg'),
                          width: 100,
                          height: 75,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: Image(
                          image: AssetImage('images/logo5.jpg'),
                          width: 100,
                          height: 75,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: Image(
                          image: AssetImage('images/logo6.jpg'),
                          width: 100,
                          height: 75,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            )
                        ),
                        child: Image(
                          image: AssetImage('images/logo9.jpeg'),
                          width: 100,
                          height: 75,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    ],
      ),
      ),
    );
  }
}
class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  int _currentindex=0;
  int _value=1;
  int _value1=1;
  int _value2=1;
  int _value3=1;
  int _value4=1;
  int _value5=1;
  int _value6=1;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BottomNavigationBar(
              currentIndex:_currentindex ,
              selectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              onTap:(index){
                setState(() {
                  _currentindex=index;
                });
              },
              backgroundColor: Color(0xffA1C359),
              items: [
                BottomNavigationBarItem(
                  icon: IconButton(onPressed:(){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context)=>ThirdPage()
                    ),);
                  },icon: Icon(Icons.home,color: Colors.lightGreen[900],)),
                  title:Container()
                ),
                BottomNavigationBarItem(
                    icon: IconButton(onPressed: (){},icon: Icon(Icons.search,color: Colors.lightGreen[900])),
                    title:Container()
                ),
                BottomNavigationBarItem(
                    icon: IconButton(onPressed:(){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>MyCart()
                      ),);
                    },icon: Icon(Icons.shopping_cart,color: Colors.lightGreen[900],)),
                    title:Container()
                ),
                BottomNavigationBarItem(
                    icon: IconButton(onPressed:(){
    Navigator.push(context,MaterialPageRoute(
    builder: (context)=>Account()
    ),);
                    },icon: Icon(Icons.perm_identity,color: Colors.lightGreen[900],
                    )),
                    title:Container()
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 60,
                width: 1000,
                child: Image(
                  image: AssetImage('images/logo.jpg'),
                  height: 40,
                  width: 40,
                ),
              ),
              Container(
                color: Color(0xffD9ECB1),
                height: 120,
                width: 1000,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(
                                  blurRadius: 10,color: Colors.grey,spreadRadius:2,
                                  offset: Offset(0,3)
                              )],
                            ),
                            child: CircleAvatar(
                              child: IconButton(
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(
                                      builder: (context)=>Fruits()
                                  ),);
                                },
                                icon: Image.asset('images/fruits.png',
                                  height: 60,
                                  color: Colors.white,),
                              ),
                              radius: 40,
                              backgroundColor: Color(0xffA1C359),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(
                                  blurRadius: 10,color: Colors.grey,spreadRadius:2,
                                  offset: Offset(0,3)
                              )],
                            ),
                            child: CircleAvatar(
                              child:Image.asset('images/vegetable.png',
                              height: 50,
                              color: Colors.lightGreen[900],),
                              radius: 40,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.lightGreen[900],

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(
                                  blurRadius: 10,color: Colors.grey,spreadRadius:2,
                                  offset: Offset(0,3)
                              )],
                            ),
                            child: CircleAvatar(
                              child: Image.asset('images/boiled.png',
                                height: 50,
                                color: Colors.lightGreen[900],),
                              radius: 40,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.lightGreen[900],

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(
                                  blurRadius: 10,color: Colors.grey,spreadRadius:2,
                                  offset: Offset(0,3)
                              )],
                            ),
                            child: CircleAvatar(
                              child: Image.asset('images/discount.png',
                                height: 50,
                                color: Colors.lightGreen[900],),
                              radius: 40,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.lightGreen[900],

                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30,top: 5),
                          child: Text('Fruits',style: TextStyle(
                              color: Color(0xff5A5A5A)
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40,top: 5),
                          child: Text('Vegetables',style: TextStyle(
                              color: Color(0xff5A5A5A)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35,top: 5),
                          child: Text('Chicken',style: TextStyle(
                              color: Color(0xff5A5A5A)),
                          ),
                        ),
                        Padding(
                          padding: const  EdgeInsets.only(left: 40,top: 5),
                          child: Text('Special',style: TextStyle(
                              color: Color(0xff5A5A5A)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/filter1.png'),
                      height: 20,
                      width: 20,
                    ),
                    Text('Filter',style: TextStyle(fontSize: 15,color: Colors.grey),)
                  ],
                ),
              ),
            Card(
              child: ListTile(
                leading: Image.asset('images/fruit1.png'),
                title: Text('Orange',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(right:20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Color(0xffEEEEEE),
                        height: 20,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isExpanded: true,
                              value: _value,
                              onChanged: (value){
                                setState(() {
                                  _value=value;
                                });
                              },
                              items:[
                                DropdownMenuItem(
                                  child: Text('1 kg'),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text('2 kg'),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text('3 kg'),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text('4 kg'),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text('5 kg'),
                                  value: 5,
                                ),
                              ]
                          ),
                        ),
                      ),
                      Text('Rs 50.00',style: TextStyle(
                          decoration: TextDecoration.lineThrough
                      ),),
                      Text('Rs 40.00'),
                    ],
                  ),
                ),
                trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 30,
                    child: FlatButton(
                      color: Colors.lightGreen[400],
                      onPressed: (){},
                      child: Text('ADD',style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ),
      ),
              Card(
                child: ListTile(
                  leading: Image.asset('images/fruit2.jpg'),
                  title: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Banana',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Container(
                        color: Color(0xffEEEEEE),
                        width: 100,
                        height: 20,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isExpanded: true,
                              value: _value1,
                              onChanged: (value){
                                setState(() {
                                  _value1=value;
                                });
                              },
                              items:[
                                DropdownMenuItem(
                                  child: Text('1 kg'),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text('2 kg'),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text('3 kg'),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text('4 kg'),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text('5 kg'),
                                  value: 5,
                                ),
                              ]
                          ),
                        ),
                      ),
                      Text('Rs 50.00',style: TextStyle(
                          decoration: TextDecoration.lineThrough
                      ),),
                      Text('Rs 45.00'),
                    ],
                  ),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 30,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: (){},
                        child: Text('ADD',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset('images/fruit3.png'),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Pineapple',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Container(
                        color: Color(0xffEEEEEE),
                        width: 100,
                        height: 20,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isExpanded: true,
                              value: _value2,
                              onChanged: (value){
                                setState(() {
                                  _value2=value;
                                });
                              },
                              items:[
                                DropdownMenuItem(
                                  child: Text('1 kg'),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text('2 kg'),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text('3 kg'),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text('4 kg'),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text('5 kg'),
                                  value: 5,
                                ),
                              ]
                          ),
                        ),
                      ),
                      Text('Rs 60.00',style: TextStyle(
                          decoration: TextDecoration.lineThrough
                      ),),
                      Text('Rs 50.00'),
                    ],
                  ),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 30,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: (){},
                        child: Text('ADD',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset('images/fruit4.jpg'),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Watermelon',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Container(
                        color: Color(0xffEEEEEE),
                        width: 100,
                        height: 20,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isExpanded: true,
                              value: _value3,
                              onChanged: (value){
                                setState(() {
                                  _value3=value;
                                });
                              },
                              items:[
                                DropdownMenuItem(
                                  child: Text('1 kg'),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text('2 kg'),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text('3 kg'),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text('4 kg'),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text('5 kg'),
                                  value: 5,
                                ),
                              ]
                          ),
                        ),
                      ),
                      Text('Rs 60.00',style: TextStyle(
                          decoration: TextDecoration.lineThrough
                      ),),
                      Text('Rs 55.00'),
                    ],
                  ),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 30,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: (){},
                        child: Text('ADD',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset('images/fruit5.jpg'),
                  title: Text('Mango',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Color(0xffEEEEEE),
                          width: 100,
                          height: 20,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                isExpanded: true,
                                value: _value4,
                                onChanged: (value){
                                  setState(() {
                                    _value4=value;
                                  });
                                },
                                items:[
                                  DropdownMenuItem(
                                    child: Text('1 kg'),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('2 kg'),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('3 kg'),
                                    value: 3,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('4 kg'),
                                    value: 4,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('5 kg'),
                                    value: 5,
                                  ),
                                ]
                            ),
                          ),
                        ),
                        Text('Rs 90.00',style: TextStyle(
                            decoration: TextDecoration.lineThrough
                        ),),
                        Text('Rs 80.00'),
                      ],
                    ),
                  ),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 30,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: (){},
                        child: Text('ADD',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset('images/fruit6.jpeg'),
                  title: Text('Grapes',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Container(
                        color: Color(0xffEEEEEE),
                        width: 100,
                        height: 20,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isExpanded: true,
                              value: _value5,
                              onChanged: (value){
                                setState(() {
                                  _value5=value;
                                });
                              },
                              items:[
                                DropdownMenuItem(
                                  child: Text('1 kg'),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text('2 kg'),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text('3 kg'),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text('4 kg'),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text('5 kg'),
                                  value: 5,
                                ),
                              ]
                          ),
                        ),
                      ),
                      Text('Rs 50.00',style: TextStyle(
                          decoration: TextDecoration.lineThrough
                      ),),
                      Text('Rs 40.00'),
                    ],
                  ),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 30,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: (){},
                        child: Text('ADD',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  isThreeLine: true,
                  leading: Image.asset('images/fruit7.jpg'),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Apple',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Container(
                        color: Color(0xffEEEEEE),
                        width: 100,
                        height: 20,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: true,
                            value: _value6,
                            onChanged: (value){
                              setState(() {
                                _value6=value;
                              });
                            },
                            items:[
                              DropdownMenuItem(
                                child: Text('1 kg'),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text('2 kg'),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text('3 kg'),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text('4 kg'),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text('5 kg'),
                                value: 5,
                              ),
                            ]
                          ),
                        ),
                      ),
                      Text('Rs 50.00',style: TextStyle(
                        decoration: TextDecoration.lineThrough
                      ),),
                      Text('Rs 110.00'),
                    ],
                  ),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 30,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: (){},
                        child: Text('ADD',style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
          ],
            ),
        ),
            ),
        );
      
  }
}
class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int _value=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=>ThirdPage()
            ),);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Row(
            children: <Widget>[
      Text('MY CART',style:
      TextStyle(
          color: Colors.lightGreen[900],
          fontWeight: FontWeight.bold,
      ),),
              Icon(Icons.shopping_cart,color: Color(0xffECB200),),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400]
                  ),
                  child: Card(
                    child: ListTile(
                      leading: Image.asset('images/fruit7.jpg'),
                      title: Text('Apple',style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      subtitle: Container(
                        color: Color(0xffEEEEEE),
                        height: 20,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: false,
                              value: _value,
                              onChanged: (value){
                                setState(() {
                                  _value=value;
                                });
                              },
                              items:[
                                DropdownMenuItem(
                                  child: Text('1 kg'),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text('2 kg'),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text('3 kg'),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text('4 kg'),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text('5 kg'),
                                  value: 5,
                                ),
                              ]
                          ),
                        ),
                      ) ,
                      trailing: Container(
                        color: Colors.white,
                        height: 50,
                        width: 120,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.lightGreen,
                                  child: Center(
                                    child: Text('+',style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text('1'),
                                ),
                                Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.lightGreen,
                                  child: Center(
                                    child: Text('-',style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                            Text('Rs 110.00',style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.lightGreen[900],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    child: Icon(Icons.close,color: Colors.lightGreen[900],size: 15,),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400]
                  ),
                  child: Card(
                    child: ListTile(
                      leading: Image.asset('images/fruit1.png'),
                      title: Text('Orange',style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      subtitle: Container(
                        color: Color(0xffEEEEEE),
                        height: 20,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isExpanded: false,
                              value: _value,
                              onChanged: (value){
                                setState(() {
                                  _value=value;
                                });
                              },
                              items:[
                                DropdownMenuItem(
                                  child: Text('1 kg'),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text('2 kg'),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text('3 kg'),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text('4 kg'),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text('5 kg'),
                                  value: 5,
                                ),
                              ]
                          ),
                        ),
                      ) ,
                      trailing: Container(
                        color: Colors.white,
                        height: 50,
                        width: 120,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.lightGreen,
                                  child:Center(
                                    child: Text('+',style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text('1'),
                                ),
                                Container(
                                  height:15,
                                  width: 15,
                                  color: Colors.lightGreen,
                                  child: Center(
                                    child: Text('-',style: TextStyle(
                                        color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                            Text('Rs 40.00',style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.lightGreen[900],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    child: Icon(Icons.close,color: Colors.lightGreen[900],size: 15,),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 30,
                child: FlatButton(
                  color: Color(0xff79AA42),
                  onPressed: (){},
                  child: Text('SHOP MORE',style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350.4),
            child: Container(
              color: Color(0xff79AA42),
              height: 50,
              width: 1000,
              child: Row(
                children: <Widget>[
                  Text('TOTAL:',style: TextStyle(
                    color:Colors.white
                  ),),
                  Text('Rs 150.00',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 30,
                        child: FlatButton(
                          color: Colors.white,
                          onPressed: (){},
                          child: Text('CHECKOUT',style: TextStyle(
                              color: Colors.lightGreen[900],
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),);
  }
}
class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xffDBF2AB),
                              Colors.lightGreen[700]
                            ]
                        )
                    ),
                    height: 300,
                    width: 1000,
                  ),
                  clipper:MyClipper(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 310,top: 20),
                  child: Icon(Icons.edit,color: Colors.white,size: 30,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40,left: 120),
                  child: CircleAvatar(
                    child: Icon(Icons.perm_identity,size: 50,color: Colors.grey,),
                    backgroundColor: Colors.white,
                    radius:65,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180,left: 100),
                  child: Text('Aleena Thomas',style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:220,left: 20,right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(
                          blurRadius: 10,color: Colors.grey,spreadRadius:2,
                          offset: Offset(1,3)
                      )],
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Text('Contact Details',style:
                            TextStyle(color: Colors.grey[700],
                            fontWeight:FontWeight.bold),),
                            trailing: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
                            ),
                          ),
                          Divider(color: Colors.grey,height: 0.2,
                          indent: 15, endIndent: 15,),
                          ListTile(
                            leading: Text('Delivery Address',style:
                            TextStyle(color: Colors.grey[700],
                                fontWeight:FontWeight.bold),),
                            trailing: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(
                      blurRadius: 10,color: Colors.grey,spreadRadius:2,
                      offset: Offset(1,3)
                  )],
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Text('My Orders',style:
                        TextStyle(color: Colors.grey[700],
                            fontWeight:FontWeight.bold),),
                        trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
                        ),
                      ),
                      Divider(color: Colors.grey,height: 0.2,indent: 15, endIndent: 15,),
                      ListTile(
                        leading: Text('My Cards & Wallets',style:
                        TextStyle(color: Colors.grey[700],
                            fontWeight:FontWeight.bold),),
                        trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
                        ),
                      ),
                      Divider(color: Colors.grey,height: 0.2,indent: 15, endIndent: 15,),
                      ListTile(
                        leading: Text('Coupons & Points',style:
                        TextStyle(color: Colors.grey[700],
                            fontWeight:FontWeight.bold),),
                        trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
                        ),
                      ),
                      Divider(color: Colors.grey,height: 0.2,indent: 15, endIndent: 15,),
                      ListTile(
                        leading: Text('Wishlist',style:
                        TextStyle(color: Colors.grey[700],
                            fontWeight:FontWeight.bold),),
                        trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
                        ),
                      ),
                      Divider(color: Colors.grey,height: 0.2,indent: 15, endIndent: 15,),
                      ListTile(
                        leading: Text('Customer Care',style:
                        TextStyle(color: Colors.grey[700],
                            fontWeight:FontWeight.bold),),
                        trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


