import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pos_provider.dart';

class PosScreen extends StatelessWidget {
  const PosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PosProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cafe Enterprise POS'),
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.point_of_sale, size: 80, color: Colors.deepPurple),
            const SizedBox(height: 16),
            Text(
              'Items Selected: ${provider.itemCount}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => provider.addItem(),
              icon: const Icon(Icons.add),
              label: const Text('Add Order Item'),
            ),
          ],
        ),
      ),
    );
  }
}
