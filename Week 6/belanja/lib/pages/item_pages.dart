import 'package:belanja/footer/footer.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
      ),
      body: _buildItemDetails(context, item),
      bottomNavigationBar: const Footer(),
    );
  }

  Widget _buildItemDetails(BuildContext context, Item item) {
    return GridView.count(
      crossAxisCount: 1,
      padding: const EdgeInsets.all(16.0),
      children: [
        Column(
          children: [
            _buildItemImage(item),
            const SizedBox(height: 8.0),
            _buildPriceAndStock(item),
          ],
        ),
      ],
    );
  }

  Widget _buildItemImage(Item item) {
    return Hero(
      tag: item.name,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          item.image,
          fit: BoxFit.cover,
          height: 300,
          width: 300,
        ),
      )
    );
  }

  Widget _buildPriceAndStock(Item item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildPriceAndStockColumn(item),
        _buildRatingRow(item),
      ],
    );
  }

  Widget _buildPriceAndStockColumn(Item item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price: ${item.price}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          'Stock: ${item.stok}',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildRatingRow(Item item) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        Text(
          '${item.rating}',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}