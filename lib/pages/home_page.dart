import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //#image sqr
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0, top: 35),
                    child: Image(
                      image: AssetImage("assets/images/icon_sqr.png"),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  //# text My tasks
                  const Padding(
                    padding: EdgeInsets.only(left: 25, top: 35),
                    child: Text(
                      "My Tasks",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  //#icon search
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 23,
                      width: 23,
                      padding: const EdgeInsets.only(left: 150, top: 18),
                      child: const Icon(
                        Icons.search,
                        color: Color(0xFFD1CDCD),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              //#text Wats on your mind?
              const Padding(
                padding: EdgeInsets.only(left: 1),
                child: Text(
                  "Whats on your mind?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              //#first note
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange.shade100,
                  ),

                  child: Row(
                    children: [
                      //#button success
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Icon(
                          Icons.save_outlined,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(
                        width: 10,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //#Text title
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 8.0,
                            ),
                            child: Text(
                              "Pay Emma",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),



                          //#Text subtitle
                          Container(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: const Text(
                              "20 dollars for manga",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),


                      SizedBox(width: MediaQuery.of(context).size.width * 0.13,),

                      //#button for delete
                      const Icon(
                        Icons.delete,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ],

                  ), // decoration: ,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade100,
                  ),
                  // decoration: ,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red.shade100,
                  ),
                  // decoration: ,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.shade100,
                  ),
                  // decoration: ,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellowAccent.shade100,
                  ),
                  // decoration: ,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        items: const [
          //#button home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: '',
          ),

          //#button nightLight
          BottomNavigationBarItem(
            icon: Icon(
              Icons.nightlight_round,
              color: Colors.grey,
            ),
            label: '',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
