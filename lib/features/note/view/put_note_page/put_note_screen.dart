import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/note/view/put_note_page/put_note_controller.dart';

class PutNoteScreen extends GetView<PutNoteController> {
  const PutNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30),
          onPressed: controller.getBack,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: controller.titleTextEditingController,
              style: const TextStyle(fontSize: 28),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: controller.bodyTextEditingController,
              style: const TextStyle(fontSize: 18),
              maxLines: null,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Type your something......",
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.onConfirm(),
        child: const Icon(Icons.save, size: 50),
      ),
    );
  }
}
