import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_auth/components/data_class.dart';
import 'package:provider/provider.dart';

class FireStore extends StatefulWidget {
  const FireStore({super.key});

  @override
  State<FireStore> createState() => _FireStoreState();
}

class _FireStoreState extends State<FireStore> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    CollectionReference allItemes =
        FirebaseFirestore.instance.collection('allItemes');
    void saveFuntion() {
      allItemes.add({'name': textController.text});
      textController.clear();
    }

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: textController,
        ),
      ),
      body: Center(
        child: StreamBuilder(
          stream: allItemes.orderBy('name').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text("Error loading..."),
              );
            }
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }

            return ListView(
              children: snapshot.data!.docs.map((allIteme) {
                return Center(
                  child: ListTile(
                    title: Text(allIteme['name']),
                    onLongPress: () {
                      allIteme.reference.delete();
                    },
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          Provider.of<DataClass>(context, listen: false).infoInput();
          Provider.of<DataClass>(context, listen: false).infoTime();
          saveFuntion();
        },
      ),
    );
  }
}
