import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('ViewPage displays correct information',
      (WidgetTester tester) async {
    const String name = 'John Doe';
    const String identityNumber = '123456789';
    const String birthdate = '01/01/2000';
    const String gender = 'Male';
    const String phoneNumber = '1234567890';
    const String lastEducation = 'Bachelor';
    const String religion = 'None';
    const String job = 'Developer';
    const String address = '123 Main St';
    const String accountType = 'Savings';
    await tester.pumpWidget(
      MaterialApp(
        home: ViewPage(
          name: name,
          identitynumber: identityNumber,
          birthdate: birthdate,
          gender: gender,
          phonenumber: phoneNumber,
          lasteducation: lastEducation,
          religion: religion,
          job: job,
          address: address,
          accounttype: accountType,
        ),
      ),
    );
    expect(find.text('Name: $name'), findsOneWidget);
    expect(find.text('Identity Number: $identityNumber'), findsOneWidget);
    expect(find.text('Birht Date: $birthdate'),
        findsOneWidget); // Typo: 'Birht Date'
    expect(find.text('Gender: $gender'), findsOneWidget);
    expect(find.text('Phone Number: $phoneNumber'), findsOneWidget);
    expect(find.text('Last Education: $lastEducation'), findsOneWidget);
    expect(find.text('Religion: $religion'), findsOneWidget);
    expect(find.text('Job: $job'), findsOneWidget);
    expect(find.text('Address: $address'), findsOneWidget);
    expect(find.text('Account Type: $accountType'), findsOneWidget);
  });
}
