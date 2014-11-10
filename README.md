# Stackviz

Visual stack profiler using [stackprof](https://github.com/tmm1/stackprof).  
This gem is a thin stackprof wrapper and provides simple API to see profiling result quickly.

## Installation

```bash
$ brew install graphviz
$ gem install stackviz
```

## Usage

Stackviz saves cpu time profiling result to `/tmp` directory and open it.

```ruby
require 'stackviz'

Stackviz.profile do
  1000.times { User.all.to_a }
end
```

### Specify path to save graph

```ruby
Stackviz.profile(path: 'graph.gif') do
  1000.times { User.all.to_a }
end
```

### Do not open graph automatically

```ruby
Stackviz.profile(path: 'graph.gif') do
  1000.times { User.all.to_a }
end
```

## License

MIT License
