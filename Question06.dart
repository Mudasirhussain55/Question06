//Q.6: Write a program to check whether
// an alphabet is a vowel or consonant.
import 'dart:io';

void main (){

stdout.write("Enter a single alphabet: ");
  String? input = stdin.readLineSync();

if (input != null && input.length == 1 && RegExp(r'[a-zA-Z]').hasMatch(input)) {
    String letter = input.toLowerCase();
if ("aeiou".contains(letter)) {
      print("The alphabet '\$input' is a vowel.");
    } else {
      print("The alphabet '\$input' is a consonant.");
    }
  } else {
    print("Invalid input. Please enter a single alphabet.");
  }









}