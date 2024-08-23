import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jdal_portax/extensions/json/list_extension.dart';
import 'package:jdal_portax_repository_model/metadata_model.dart';
import 'package:jdal_portax_service/jdal_portax_service.dart';
import 'package:jdal_portax_repository/metadata_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: const Center(
          child: DataFetcher(),
        ),
      ),
    );
  }
}

class DataFetcher extends StatelessWidget {
  const DataFetcher({super.key});

  Future<String> fetchData() async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 2));
    return 'Fetched Data';
  }

  Future<String> getData() async {
    Metadata newMetadata =
        Metadata.create("type", 2.2, DateTime.now(), "location", "resolution");
    Metadata created = await MetadataRepository().createAsync(newMetadata);

    var list = await MetadataRepository().getAllAsync();

    return 'test';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return Text(
            snapshot.data ?? 'No Data',
            style: TextStyle(fontSize: 24),
          );
        }
      },
    );
  }
}
