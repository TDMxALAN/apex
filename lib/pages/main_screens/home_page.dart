import 'package:apex/api/api_services.dart';
import 'package:apex/models/product_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: FutureBuilder(
        future: ApiServices().fetchAllData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                style: TextStyle(color: Colors.white),
              ),
            );
          } else if (!snapshot.hasData) {
            return Center(
              child: Text(
                "No data found !",
                style: TextStyle(color: Colors.white),
              ),
            );
          } else {
            ProductModel allData = snapshot.data!;
            return Card(
              child: Text(allData.name),
            );
          }
        },
      ),
    );
  }
}
