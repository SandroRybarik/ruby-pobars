# Installation

Installation and usage
```sh
gem install pobars
```
```rb
require 'pobars'
```



## Usage and api

Pobars functions accepts number between 1 to 100 inclusive to render progressbar.
You can pass float numbers as well.

Simplest usage:
```rb
print Pobars.regular(10)
  # -> progress: █████............................................. 10% 
```

## Options as hash params

| hash param       | default   |
|------------------|-----------|
| label            | progress: |
| length           | 50        |
| symbol           | █         |
| remaining_symbol | .         |

```rb

# Change params to produce different progress bars.

Pobars.circular(percent, label:"progress:", length:50, symbol:"█", remaining_symbol:".")

Pobars.regular(percent, label:"progress:", length:50, symbol:"█", remaining_symbol:".")

```

