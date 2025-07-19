import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue[200],
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          print('Press menu.');
        }, icon: Icon(Icons.menu, size: 50)),
        title: Center(child: Text('My Profile')),
        actions: [
          Icon(Icons.search, size: 50,),
          Icon(Icons.add_a_photo, size: 50,),
          SizedBox(width: 10,)
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text('Welcome to my app.',style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600, 
            ),),
          ),

          //Image from url
          Image.network('https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
          width: 200, height: 200,),

          //Image from static folder
          Image.asset('assets/images/profile.jpg', width: 300, height: 300, )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon:Icon(Icons.person), label: 'Setting'),
        ],
        ),
    );
  }
}