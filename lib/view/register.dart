import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

String? selectBatch;

class _RegisterState extends State<Register> {
 
  final gap = const SizedBox(
    height: 10,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[400],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(  
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    gap,
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                        hintText: 'Enter First Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    gap,
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                        hintText: 'Enter Last Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    gap,
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Phone No',
                        hintText: 'Enter Phone No',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    gap,
                    DropdownButtonFormField<String>(
                      value: selectBatch,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: 'Batch',
                      ),
                      items: <String>[
                        'Batch 30',
                        'Batch 31',
                        'Batch 32',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectBatch = newValue;
                        });
                      },
                    ),
                    gap,
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        hintText: 'Enter Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    gap,
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              gap,
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent[400],
                      minimumSize: const Size(double.infinity, 40)),
                  child: const Text('Register'))
            ],
          ),
        ),
      ),
    );
  }
}
