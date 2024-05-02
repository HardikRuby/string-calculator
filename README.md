# String Calculator

The String Calculator is a Ruby-based application designed to provide a simple utility for adding numbers provided as strings. This application can process strings containing numbers separated by commas, custom delimiters, and also correctly handles new lines as delimiters. It also enforces rules such as ignoring numbers larger than 1000 and throwing errors for negative numbers.

## Installation

To set up the String Calculator on your local machine, follow these steps:

### Prerequisites

- Ruby (Version 3.0.1 or later recommended)

### Setting Up

1. Clone the repository to your local machine:
   ```bash
   git clone git@github.com:HardikRuby/string-calculator.git
   cd string_calulator

2. Install the required gems:
   ```bash
   bundle install

## Usage

```ruby
StringCalculator.add('1')
# retunrs 1

StringCalculator.add('1,5')
# returns 6

StringCalculator.add("1\n2,3")
# returns 6

StringCalculator.add("//;\n1;2")
# returns 3
```

### Running the Tests

Run below command to run Rspecs:

```bash
rspec
````

### Features

**Custom Delimiters:** Supports defining custom delimiters directly within the string.

**Error Handling:** Gracefully handles errors for negative numbers and invalid inputs.

**Flexible Input:** Can handle multiple types of delimiters including new lines and custom defined characters.