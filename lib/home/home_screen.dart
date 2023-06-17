import 'package:api_demo/home/home_api.dart';
import 'package:api_demo/login/login_screen.dart';
import 'package:api_demo/model/photos_model.dart';
import 'package:api_demo/services/perference_services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductMode? productList;

  @override
  void initState() {
    getImageList();
    super.initState();
  }

  Future<void> getImageList() async {
    productList = await HomeScreenApi.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.indigo,
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('HOME'),
          backgroundColor: Colors.indigo,
          actions: [
            IconButton(
              onPressed: () {
                PerfServices.clearPref();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                    (route) => false);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const LoginScreen(),
                //     ));
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: productList == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                itemCount: productList!.products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Container(
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.height * 0.15,
                        child: Image(
                          // fit: BoxFit.cover,
                          image: NetworkImage(
                            productList!.products![index].images!.first
                                .toString(),
                          ),
                        ),
                      ),
                      Text(
                        productList!.products![index].category.toString(),
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Text('   '),
                          Text(
                            productList!.products![index].price.toString(),
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow.shade800),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                          ),
                          Text(productList!.products![index].rating.toString())
                        ],
                      ),
                    ],
                  ),
                ),
              )
        // : ListView.builder(
        //     itemCount: productList!.products!.length,
        //     itemBuilder: (context, index) {
        //       return Container(
        //         height: 200,
        //         width: 200,
        //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        //       );
        //       // return ListTile(
        //       //   leading: CircleAvatar(
        //       //     backgroundImage:
        //       //         NetworkImage(productList!.products![index].images!.first.toString()),
        //       //   ),
        //       //   title: Text(productList!.products![index].title.toString()),
        //       //   subtitle: Text(productList!.products![index].price.toString()),
        //       // );
        //     },
        //   ),
        );
  }
}
