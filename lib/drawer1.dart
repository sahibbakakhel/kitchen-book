
import 'package:flutter/material.dart';

class Drawer1 extends StatefulWidget {
  const Drawer1({super.key});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 100,),
            Center(child: Text('Sahib',)),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 2,
        leading: Icon(Icons.account_box_outlined),
        titleSpacing: 0.0,
  
        actions: [
          IconButton(
            onPressed: (() {}
            ),
            icon: Icon(Icons.search),
            ),
          IconButton(
            onPressed: (() {}
            ),
            icon: Icon(Icons.phone),
            ),
          IconButton(
            onPressed: (() {}
            ),
            icon: Icon(Icons.more_vert),
            ),
        ],
      ),
      
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/sahib1.jpg'),
                  ),
                ),
                accountName: Text('Sahib Nangyal',textScaleFactor: 1.5,), 
                accountEmail: Text('sahibnangyal@gmail.com',textScaleFactor: 1.3,)
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffE6E6E6),
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.only(bottom: 30,right: 10,left: 10),
                                focusColor: Colors.grey,
                                enabled: true,
                                leading: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage('images/sahib2.jpg'),
                                ),
                                title: Text('Sahib Nangyal',textScaleFactor: 1.2,),
                                
                                trailing: Icon(Icons.call_end_outlined,color: Colors.blue,),
                                subtitle: Text('11:50',style: TextStyle(color: Colors.grey),),
                                selected: false,
                                autofocus: false,
                                enableFeedback: true,
                                
                              ),
                            ),
                        ],
                      );
                    },
                    
                ),
              ),
            ],
          ),
        ),
      ),

      // drawer: Drawer(
      //   child: ListView(
      //     children: [ 
      //       SizedBox(
      //         height: 170,
      //         child: UserAccountsDrawerHeader(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
      //             color: Colors.green,
      //           ),
      //           currentAccountPicture: Padding(
      //             padding: const EdgeInsets.only(bottom: 10),
      //             child: CircleAvatar(
      //               radius: 20,
      //               backgroundImage: AssetImage('images/sahib1.jpg'),),
      //           ),
      //           accountName: Text('Sahib Nangyal',style: TextStyle(fontSize: 22),),
      //           accountEmail: Padding(
      //             padding: const EdgeInsets.only(bottom: 10),
      //             child: Text('sahibnangyal116688@gmail.com',style: TextStyle(fontSize: 16),),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 60,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20),
      //           color: Color(0xffE6E6E6),
      //         ),
      //         child: ListTile(
      //           focusColor: Colors.grey,
      //           enabled: true,
      //           leading: CircleAvatar(
      //             radius: 20,
      //             backgroundImage: AssetImage('images/sahib2.jpg'),
      //           ),
      //           title: Text('Sahib Nangyal',textScaleFactor: 1.2,),
                
      //           trailing: Icon(Icons.call_end_outlined,color: Colors.blue,),
      //           subtitle: Text('11:50',style: TextStyle(color: Colors.grey),),
      //           selected: false,
      //           autofocus: false,
      //           enableFeedback: true,
                
      //         ),
      //       ),
      //       Container(
      //         height: 60,
      //         decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: Color(0xffE6E6E6),
      //         ),
      //         child: ListTile(
      //       focusColor: Colors.grey,
      //       enabled: true,
      //       leading: CircleAvatar(
      //         radius: 20,
      //         backgroundImage: AssetImage('images/sahib2.jpg'),
      //       ),
      //       title: Text('Sahib Nangyal',textScaleFactor: 1.2,),
            
      //       trailing: Icon(Icons.call_end_outlined,color: Colors.blue,),
      //       subtitle: Text('11:50',style: TextStyle(color: Colors.grey),),
      //       selected: false,
      //       autofocus: false,
      //       enableFeedback: true,
            
      //         ),
      //       ),
      //       Container(
      //         height: 60,
      //         decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: Color(0xffE6E6E6),
      //         ),
      //         child: ListTile(
      //       focusColor: Colors.grey,
      //       enabled: true,
      //       leading: CircleAvatar(
      //         radius: 20,
      //         backgroundImage: AssetImage('images/sahib2.jpg'),
      //       ),
      //       title: Text('Sahib Nangyal',textScaleFactor: 1.2,),
            
      //       trailing: Icon(Icons.call_end_outlined,color: Colors.blue,),
      //       subtitle: Text('11:50',style: TextStyle(color: Colors.grey),),
      //       selected: false,
      //       autofocus: false,
      //       enableFeedback: true,
            
      //         ),
      //       ),
      //       Container(
      //         height: 60,
      //         decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: Color(0xffE6E6E6),
      //         ),
      //         child: ListTile(
      //       focusColor: Colors.grey,
      //       enabled: true,
      //       leading: CircleAvatar(
      //         radius: 20,
      //         backgroundImage: AssetImage('images/sahib2.jpg'),
      //       ),
      //       title: Text('Sahib Nangyal',textScaleFactor: 1.2,),
            
      //       trailing: Icon(Icons.call_end_outlined,color: Colors.blue,),
      //       subtitle: Text('11:50',style: TextStyle(color: Colors.grey),),
      //       selected: false,
      //       autofocus: false,
      //       enableFeedback: true,
            
      //         ),
      //       ),
      //       Container(
      //         height: 60,
      //         decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: Color(0xffE6E6E6),
      //         ),
      //         child: ListTile(
      //       focusColor: Colors.grey,
      //       enabled: true,
      //       leading: CircleAvatar(
      //         radius: 20,
      //         backgroundImage: AssetImage('images/sahib2.jpg'),
      //       ),
      //       title: Text('Sahib Nangyal',textScaleFactor: 1.2,),
            
      //       trailing: Icon(Icons.call_end_outlined,color: Colors.blue,),
      //       subtitle: Text('11:50',style: TextStyle(color: Colors.grey),),
      //       selected: false,
      //       autofocus: false,
      //       enableFeedback: true,
            
      //         ),
      //       ),
      //       Container(
      //         height: 60,
      //         decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: Color(0xffE6E6E6),
      //         ),
      //         child: ListTile(
      //       focusColor: Colors.grey,
      //       enabled: true,
      //       leading: CircleAvatar(
      //         radius: 20,
      //         backgroundImage: AssetImage('images/sahib2.jpg'),
      //       ),
      //       title: Text('Sahib Nangyal',textScaleFactor: 1.2,),
            
      //       trailing: Icon(Icons.call_end_outlined,color: Colors.blue,),
      //       subtitle: Text('11:50',style: TextStyle(color: Colors.grey),),
      //       selected: false,
      //       autofocus: false,
      //       enableFeedback: true,
            
      //         ),
      //       ),
      //       Container(
      //         height: 60,
      //         decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: Color(0xffE6E6E6),
      //         ),
      //         child: ListTile(
      //       focusColor: Colors.grey,
      //       enabled: true,
      //       leading: CircleAvatar(
      //         radius: 20,
      //         backgroundImage: AssetImage('images/sahib2.jpg'),
      //       ),
      //       title: Text('Sahib Nangyal',textScaleFactor: 1.2,),
            
      //       trailing: Icon(Icons.call_end_outlined,color: Colors.blue,),
      //       subtitle: Text('11:50',style: TextStyle(color: Colors.grey),),
      //       selected: false,
      //       autofocus: false,
      //       enableFeedback: true,
            
      //         ),
      //       ),
      //       Container(
      //         height: 60,
      //         decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: Color(0xffE6E6E6),
      //         ),
      //         child: ListTile(
      //       focusColor: Colors.grey,
      //       enabled: true,
      //       leading: CircleAvatar(
      //         radius: 20,
      //         backgroundImage: AssetImage('images/sahib2.jpg'),
      //       ),
      //       title: Text('Sahib Nangyal',textScaleFactor: 1.2,),
            
      //       trailing: Icon(Icons.call_end_outlined,color: Colors.blue,),
      //       subtitle: Text('11:50',style: TextStyle(color: Colors.grey),),
      //       selected: false,
      //       autofocus: false,
      //       enableFeedback: true,
            
      //         ),
      //       ),
             
      //     ],
      //   ),

      // ),
    );
  }
}