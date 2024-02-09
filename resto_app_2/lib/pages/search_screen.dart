import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController txtFormSearch = TextEditingController(text: "");
  bool colorSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Search Screen",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          const SizedBox(
            height: 20,
          ),
          isiBody(),
        ],
      ),
    );
  }

  Widget isiBody() {
    return Column(
      children: [
        Focus(
          onFocusChange: (value) {
            setState(() {
              colorSearch = value;
            });
          },
          child: TextFormField(
            controller: txtFormSearch,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: const EdgeInsets.all(10),
              hintText: "search your product here ...",
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 65, 1, 84),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: Icon(
                Icons.search,
                color: colorSearch
                    ? const Color.fromARGB(255, 110, 15, 136)
                    : Colors.black,
              ),
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }
}
