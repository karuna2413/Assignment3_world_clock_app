import 'package:flutter/material.dart';
import 'package:worlds_clock_app/model/data.dart';

class Modalcard extends StatelessWidget {
  final List<Data> citylist;
  final Function onclickbtn;
  const Modalcard(
      {required this.citylist, required this.onclickbtn, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text("choose country"),
      ),
      body: ListView.builder(
          itemCount: citylist.length,
          itemBuilder: (ctx, index) => Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: Card(
                  child: ListTile(
                    onTap: () =>  onclickbtn(citylist[index].time),
                    // tileColor: Colors.blueAccent,
                    title: TextButton(
                      onPressed: () {
                        onclickbtn(citylist[index].time);
                      },
                      child: Text(
                        citylist[index].city,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    leading: Container(
                        // height:150 ,
                        width: 150,
                        child: Image.asset(citylist[index].img,height: 100,width: 100)),
                  ),
                ),
              )),
    );
  }
}
