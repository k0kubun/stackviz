# Stackviz

Visual stack profiler using [stackprof](https://github.com/tmm1/stackprof).  
This gem is a thin stackprof wrapper and provides simple API to see profiling result quickly.

## Installation

```bash
$ brew install graphviz
$ gem install stackviz
```

## Usage

```
require 'stackviz'

Stackviz.profile do
  1000.times { User.all.to_a }
end
```

## License

MIT License
