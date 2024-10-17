import 'package:belanja/footer/footer.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
        name: "Sugar",
        price: 5000,
        stok: 10,
        rating: 4.5,
        image: "assets/images/gula.png"),
    Item(
        name: "Salt",
        price: 2000,
        stok: 20,
        rating: 4.0,
        image: "assets/images/garam.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: _buildItemList(context),
      ),
      bottomNavigationBar: const Footer(),
    );
  }

  Widget _buildItemList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return _buildItemCard(context, item);
      },
    );
  }

  Widget _buildItemCard(BuildContext context, Item item) {
    return InkWell(
      onTap: () {
        context.go('/item', extra: item);
      },
      child: Card(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Row(
            children: [
              _buildItemImage(item),
              _buildItemDetails(item),
              _buildItemPrice(item),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItemImage(Item item) {
    return Hero(
      tag: item.name,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          item.image,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      )
    );
  }

  Widget _buildItemDetails(Item item) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 5),
        child: Text(item.name),
      ),
    );
  }

  Widget _buildItemPrice(Item item) {
    return Expanded(
      child: Text(
        item.price.toString(),
        textAlign: TextAlign.end,
      ),
    );
  }
}