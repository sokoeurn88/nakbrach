import 'package:flutter/material.dart';
import 'package:nakbrach/dashboard_components/balance.dart';
import 'package:nakbrach/dashboard_components/edit_profile.dart';
import 'package:nakbrach/dashboard_components/mange_products.dart';
import 'package:nakbrach/dashboard_components/my_store.dart';
import 'package:nakbrach/dashboard_components/statistics.dart';
import 'package:nakbrach/dashboard_components/supplier_orders.dart';
import 'package:nakbrach/widgets/appbar_widgets.dart';

List<String> label = [
  'my store',
  'orders',
  'edit profile',
  'manage product',
  'balance',
  'statics'
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_rounded,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart
];

List<Widget> pages = const [
  MyStore(),
  SupplierOrders(),
  EditProfile(),
  ManageProducts(),
  Balance(),
  Statistics(),
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: 'Dashboard'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/welcome_screen');
            },
            icon: const Icon(Icons.logout, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
          mainAxisSpacing: 50,
          crossAxisSpacing: 50,
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => pages[index]));
              },
              child: Card(
                elevation: 20,
                shadowColor: Colors.purpleAccent.shade200,
                color: Colors.blueGrey.withOpacity(0.7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(icons[index], size: 50, color: Colors.yellowAccent),
                    Text(
                      label[index].toUpperCase(),
                      style: const TextStyle(
                          fontSize: 24,
                          color: Colors.yellowAccent,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Acme'),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
