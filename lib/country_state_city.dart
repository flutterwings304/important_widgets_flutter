import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:flutter/material.dart';

class CountryStateCityScreen extends StatefulWidget {
  const CountryStateCityScreen({super.key});

  @override
  State<CountryStateCityScreen> createState() => _CountryStateCityScreenState();
}

class _CountryStateCityScreenState extends State<CountryStateCityScreen> {
  final TextEditingController countryCont = TextEditingController();
  final TextEditingController stateCont = TextEditingController();
  final TextEditingController cityCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text("Country State City Picker"),
        // ),
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountryStateCityPicker(
                country: countryCont,
                state: stateCont,
                city: cityCont,
                dialogColor: Colors.grey.shade200,
                textFieldDecoration: const InputDecoration(
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                    border: OutlineInputBorder())),
          ],
        ),
      ),
    ));
  }
}
