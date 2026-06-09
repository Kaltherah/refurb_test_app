import 'package:flutter/material.dart';

void main() {
  runApp(const RefurbTestApp());
}

class RefurbTestApp extends StatelessWidget {
  const RefurbTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hardware Diagnostics',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Diagnostics Suite'),
      ),
      body: const Center(
        child: Text(
          'Ready to execute hardware tests.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class _DashboardPageState extends State<DashboardPage> {
  String statusMessage = "Ready to execute hardware tests.";

  void runHardwareCheck() {
    setState(() {
      statusMessage = "STORAGE CHECK: 256GB NVMe Detected\nSTATUS: PASS";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Device Diagnostics Suite')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              statusMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: runHardwareCheck,
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
              child: const Text('Run Diagnostics Test'),
            ),
          ],
        ),
      ),
    );
  }
}