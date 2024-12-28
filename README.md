# Dart Unexpected JSON Structure Handling

This repository demonstrates a common error in Dart when handling JSON responses from HTTP requests and provides a robust solution.

The `bug.dart` file contains code that assumes a specific JSON structure, making it vulnerable to runtime errors if the structure is different.  The `bugSolution.dart` file shows how to improve error handling to prevent these issues.

## Problem

The original code assumes the JSON response will always contain a `data` key. If the API returns a different JSON structure, the code will throw an exception.

## Solution

The improved code incorporates more robust error handling to check for the existence of keys before accessing them, preventing unexpected runtime errors. It also includes more informative error messages.
