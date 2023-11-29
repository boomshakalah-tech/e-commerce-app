class CValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    //Regular expressions for email validation
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    //Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    //Check for Uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at lease one uppercase letter.';
    }
    //Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at lease one number.';
    }

    //Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    //Regular expression for phone number validation (assuming a 10 digit US phone number format)
    final phoneRefExp = RegExp(r'^\d{10}$');

    if (!phoneRefExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).';
    }

    return null;
  }
}
