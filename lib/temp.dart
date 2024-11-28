import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text('DataProvider Example')),
      body: FutureBuilder(
        future: dataProvider.fetchAllTransactions(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final transactions = snapshot.data as List<TransactionData>;
            return ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return ListTile(
                  title: Text('Transaction ${transaction.id}'),
                  subtitle: Text(transaction.dateTime.toString()),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final now = DateTime.now();
          await dataProvider.addTransaction(now);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
