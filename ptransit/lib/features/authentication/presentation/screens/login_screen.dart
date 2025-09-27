import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../../../core/providers/auth_provider.dart';
import '../../../../core/models/user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _submitting = false;
  bool _canContinue = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_updateContinueButton);
    _phoneController.addListener(_updateContinueButton);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _updateContinueButton() {
    final name = _nameController.text.trim();
    final phone = _phoneController.text.trim();

    final isNameValid = name.length >= 2;
    final isPhoneValid = _isValidPhone(phone);

    setState(() {
      _canContinue = isNameValid && isPhoneValid && !_submitting;
    });
  }

  bool _isValidPhone(String value) {
    // Basic validation: 10 digits, does not start with 0
    final onlyDigits = value.replaceAll(RegExp(r'[^0-9]'), '');
    if (onlyDigits.isEmpty) return false;
    if (onlyDigits.startsWith('0')) return false;
    return onlyDigits.length == 10;
  }

  void _login() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() {
      _submitting = true;
    });

    final name = _nameController.text.trim();
    final phone = _phoneController.text.trim();

    try {
      await _persistAndLogin(name: name, phone: phone);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    } finally {
      if (mounted) {
        setState(() {
          _submitting = false;
        });
        _updateContinueButton();
      }
    }
  }

  Future<void> _persistAndLogin({
    required String name,
    required String phone,
  }) async {
    final DatabaseReference ref = FirebaseDatabase.instance.ref(
      'users_by_phone/$phone',
    );

    // Check if user already exists, if not, create
    final snapshot = await ref.get();
    if (!snapshot.exists) {
      await ref.set({
        'name': name,
        'phone': phone,
        'createdAt': DateTime.now().toIso8601String(),
      });
    }

    final user = User(id: phone, name: name, phone: phone, email: null);
    if (mounted) {
      Provider.of<AuthProvider>(context, listen: false).login(user);
      // The Consumer in app.dart will handle navigation automatically
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF6B46C1),
        elevation: 0,
        title: const Text('Login', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  const Icon(Icons.lock, size: 72, color: Color(0xFF6B46C1)),
                  const SizedBox(height: 16),
                  const Text(
                    'Secure Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Enter your details to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 32),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nameController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Your full name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            prefixIcon: const Icon(Icons.person),
                          ),
                          validator: (value) {
                            final v = value?.trim() ?? '';
                            if (v.isEmpty) return 'Please enter your name';
                            if (v.length < 2) return 'Enter a valid name';
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Phone number',
                            hintText: 'e.g. 9876543210',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            prefixIcon: const Icon(Icons.phone),
                          ),
                          validator: (value) {
                            final v = value?.trim() ?? '';
                            if (v.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            if (!_isValidPhone(v)) {
                              return 'Enter a valid phone number';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: _canContinue ? _login : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6B46C1),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child:
                          _submitting
                              ? const SizedBox(
                                width: 22,
                                height: 22,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation(
                                    Colors.white,
                                  ),
                                ),
                              )
                              : const Text('Continue'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
