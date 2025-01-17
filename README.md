# Dart Null Safety Bug
This repository demonstrates a common error in Dart related to null safety and accessing list elements or map entries before proper null checks.

## The Bug
The `bug.dart` file contains code that fetches data from an API.  It fails to handle cases where the API response might be empty or not in the expected format, leading to a runtime exception when accessing `data[0]['name']` before verifying that `data` and `data[0]` are not null. 

## The Solution
The `bugSolution.dart` file shows how to fix the issue by adding necessary null checks and handling potential errors gracefully.

## How to Run
1. Clone this repository.
2. Run the `bug.dart` file to observe the exception.
3. Run the `bugSolution.dart` file to see the corrected version.