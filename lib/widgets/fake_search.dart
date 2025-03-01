import 'package:flutter/material.dart';
import '../minor_screens/search.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SearchScreen()),
        );
      },
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(width: 1.4, color: Colors.yellow),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.search, color: Colors.grey),
                ),
                Text(
                  'What are you looking for?',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    'Search',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
