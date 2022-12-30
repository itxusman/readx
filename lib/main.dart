import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:readx/home_page.dart';
import 'package:readx/messenger.dart';
import 'package:readx/friend_request.dart';
import 'package:readx/profile.dart';
void main() => runApp(Myapp());


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(splash: Lottie.asset('assets/18359-too-many-books (2).json'),
      backgroundColor: Color.fromARGB(234, 40, 36, 255),
      splashTransition: SplashTransition.decoratedBoxTransition,
       splashIconSize: 250,
      duration: 30,
      animationDuration: Duration(seconds: 6),
       nextScreen: HomePage(),
       
       
       )
      
      
      );
     
    
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  
  

  int currentIndex = 0;
  final Screens= [

    HomeScreen(),
    messenger(),
    RequestsWidget(),
    ProfilePage(), 
  
  
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(122, 0, 0, 0),
      
      body: 
       Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor:Color.fromARGB(251, 80, 14, 45),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
        
        currentIndex: currentIndex,
        
        onTap: (index) => setState(() => currentIndex=index

        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home",
           backgroundColor:Color.fromARGB(251, 80, 14, 45),
         
          
          ),
          BottomNavigationBarItem(icon: Icon(Icons.messenger),
          label: "Chat",
           backgroundColor:Color.fromARGB(251, 80, 14, 45),
        
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_add),
          label: "Requests",
           backgroundColor:Colors.blue,
           ),
           BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),
          label: "Profile",
          backgroundColor: Colors.green,
           ),
           
          
        ],
      
      
      ),
    );
  }
  }
  class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return HomeAppBar();
  

  }
}
