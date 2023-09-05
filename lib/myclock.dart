import 'package:flutter/material.dart';
import 'package:worlds_clock_app/model/data.dart';
import 'package:worlds_clock_app/modalcard.dart';
import 'package:intl/intl.dart';
class Myclock extends StatefulWidget {
  const Myclock({super.key});

  @override
  State<Myclock> createState() => _MyclockState();
}

class _MyclockState extends State<Myclock> {
  final List<Data> citylist = [

    Data(city: "India", img: 'img/flag9.jpg', time: DateFormat.jm().format(DateTime.now())),
    Data(city: "Afghanistan", img: 'img/flag2.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 4)))),
    Data(city: "Algeria", img: 'img/flag3.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 3)))),
    Data(city: "Argentina", img: 'img/flag4.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 6)))),
    Data(city: "Australia", img: 'img/flag5.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 8)))),
    Data(city: "Brazil", img: 'img/flag6.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 2)))),
    Data(city: "Canada", img: 'img/flag7.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 2)))),
    Data(city: "France", img: 'img/flag8.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 5)))),
    Data(city: "Iraq", img: 'img/flag10.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 7)))),
    Data(city: "Maldives", img: 'img/flag11.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 8)))),
    Data(city: "Spain", img: 'img/flag12.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 14)))),
    Data(city: "Belgium", img: 'img/flag1.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 9)))),
    Data(city: "Taiwan", img: 'img/flag13.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 10)))),
    Data(city: "Ukraine", img: 'img/flag14.jpg', time: DateFormat.jm().format(DateTime.now().subtract(const Duration(hours: 3)))),
  ];
  var currenttime = "1:00AM";
  void onclickbtn(String timeofcity) {
    setState(() {
      currenttime = timeofcity;
      Navigator.pop(context);
    });
  }

  void onclick() {
    showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: context,
        builder: (ctx) =>
            Modalcard(citylist: citylist, onclickbtn: onclickbtn));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('select country'),
        backgroundColor: Colors.black54,
        actions: [
          IconButton(
              onPressed: onclick, icon: const Icon(Icons.arrow_drop_down))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/city4.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding:  EdgeInsets.all(0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "clock time",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Icon(Icons.location_on_outlined,
                      size: 30, color: Colors.white),
                ],
              ),
            ),
            Center(
              child: Text(
                currenttime,
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
