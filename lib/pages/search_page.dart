import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const id = "/search_page";

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 15, right: 15,),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: const [
                      Center(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(Icons.search, size: 23, color: Colors.grey,),
                          )),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(fontSize: 15, color: Colors.grey)
                            ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0, left: 15),
                        child: Center(child: Icon(Icons.cancel_outlined, size: 23, color: Colors.grey,)),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
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
                        ),
                      ),

                      const SizedBox(
                        width: 10,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //#Text title
                          const Expanded(
                            child: Padding(
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
                      ),
                    ],

                  ), // decoration: ,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade100,
                  ),
                  // decoration: ,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red.shade100,
                  ),
                  // decoration: ,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.shade100,
                  ),
                  // decoration: ,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellowAccent.shade100,
                  ),
                  // decoration: ,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300,
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