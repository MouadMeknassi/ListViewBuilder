import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(

        appBar: AppBar(

          backgroundColor: Colors.black,

          title: Text(

            'ListTile & ListView.builder',

            style: TextStyle(

              color: Colors.white,

            ),

          ),

        ),

        body: Container(

          padding: EdgeInsets.all(12),

          width: double.infinity,

          height: double.infinity,

          decoration: BoxDecoration(

            image: DecorationImage(

              image: AssetImage("assets/images/pexels.jpg"),

              fit: BoxFit.fill,

            ),

          ),

          child: ListView.builder(

            itemCount: 7,

            itemBuilder: (context, index) {

              return Column(
                children: [
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(12),
                  
                    decoration: BoxDecoration(
                  
                      borderRadius: BorderRadius.circular(20.0),
                  
                      gradient: LinearGradient(
                  
                        begin: Alignment.topRight,
                  
                        end: Alignment.bottomLeft,
                  
                        colors: [
                  
                          const Color.fromARGB(255, 164, 199, 227),
                  
                          Color.fromARGB(255, 123, 151, 203),
                  
                          Color.fromARGB(255, 11, 83, 141),
                  
                        ],
                  
                      ),
                  
                    ),
                  
                    margin: EdgeInsets.symmetric(horizontal: 15),
                  
                    child: ListTile(
                  
                      leading: Icon(Icons.person),
                  
                      title: Text(
                  
                        'Element ${index + 1}',
                  
                        style: TextStyle(
                  
                          color: Colors.white,
                  
                          fontSize: 20,
                  
                        ),
                  
                      ),
                  
                      subtitle: Text(
                  
                        'Subtitle ${index + 1} for element ${index + 1}',
                  
                        style: TextStyle(
                  
                          color: Colors.white,
                  
                          fontSize: 15,
                  
                        ),
                  
                      ),
                  
                      trailing: Icon(
                  
                        Icons.info,
                  
                        color: Colors.white,
                  
                      ),
                  
                      onTap: () {
                  
                        print("Element ${index + 1}");
                  
                      },
                  
                    ),
                  
                  ),
                ],
              );
              
            },

          ),
          
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Floating action button pressed");
          },
          child: Icon(Icons.add),
        ),

      ),

    );

  }

}