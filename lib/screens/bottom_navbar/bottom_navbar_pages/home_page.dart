import 'dart:convert';

import 'package:flutter/material.dart';

class AndroidVersion {
  AndroidVersion({
    this.id,
    this.title,
  });

  int? id;
  String? title;
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<dynamic> input1;
  late List<dynamic> input2;
  late List<AndroidVersion> androidVersions;

  @override
  void initState() {
    super.initState();

    // Initialize the input data
    input1 = jsonDecode(
        '[{"0":{"id":1,"title":"Gingerbread"},"1":{"id":2,"title":"Jellybean"},"3":{"id":3,"title":"KitKat"}},[{"id":4,"title":"Lollipop"},{"id":5,"title":"Pie"},{"id":6,"title":"Oreo"},{"id":7,"title":"Nougat"}]]');
    input2 = jsonDecode(
        '[{"0":{"id":1,"title":"Gingerbread"},"1":{"id":2,"title":"Jellybean"},"3":{"id":3,"title":"KitKat"}},{"0":{"id":8,"title":"Froyo"},"2":{"id":9,"title":"Éclair"},"3":{"id":10,"title":"Donut"}},[{"id":4,"title":"Lollipop"},{"id":5,"title":"Pie"},{"id":6,"title":"Oreo"},{"id":7,"title":"Nougat"}]]');

    // Parse the input data into a list of AndroidVersion objects
    androidVersions = _parseAndroidVersions(input1);
  }

  List<AndroidVersion> _parseAndroidVersions(List<dynamic> input) {
    final versions = <AndroidVersion>[];
    for (final obj in input) {
      if (obj is Map<String, dynamic>) {
        for (final version in obj.values) {
          versions
              .add(AndroidVersion(id: version['id'], title: version['title']));
        }
      } else if (obj is List<dynamic>) {
        for (final version in obj) {
          versions
              .add(AndroidVersion(id: version['id'], title: version['title']));
        }
      }
    }
    return versions;
  }

  AndroidVersion? findAndroidVersionById(int id) {
    for (final version in androidVersions) {
      if (version.id == id) {
        return version;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android Versions'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              androidVersions = _parseAndroidVersions(input1);
            });
          },
          child: const Text('Parse Input 1'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              androidVersions = _parseAndroidVersions(input2);
            });
          },
          child: const Text('Parse Input 2'),
        ),
        const SizedBox(height: 16),
        const Text('Android Versions:'),
        Expanded(
          child: ListView.builder(
            itemCount: androidVersions.length,
            itemBuilder: (context, index) {
              final version = androidVersions[index];
              return ListTile(
                title: Text(version.title ?? ''),
                subtitle: Text('API Level: ${version.id ?? ''}'),
              );
            },
          ),
        ),
      ]),
    );
  }
}
