# Installation

Insert into gemfile

`require 'pobars'`


## Usage

Pobars functions accepts number between 1 to 100 inclusive to render progressbar.
You can pass float numbers as well.

Simplest usage:
```rb
print Pobars.regular(10)
  # -> progress: █████............................................. 10% 
```

## Options as hash params
```rb

Pobars.circular(percent, label:"progress:", length:50, symbol:"█", remaining_symbol:".")

Pobars.regular(percent, label:"progress:", length:50, symbol:"█", remaining_symbol:".")

```