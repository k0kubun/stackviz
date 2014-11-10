# Stackviz

Quickly open graph image profiled by [stackprof](https://github.com/tmm1/stackprof).  
This gem is a thin wrapper of stackprof and provides simple API to see profiling result quickly.

## Installation

```bash
$ brew install graphviz
$ gem install stackviz
```

## Usage

```ruby
require 'stackviz'

Stackviz.profile do
  1000.times { User.all.to_a }
end
```

Stackviz converts profiling result to image by `graphviz`, saves it to `/tmp` directory and `open` it.

![](http://i.gyazo.com/9d57fc063b27aa9748fca559c8499937.png)

### Specify path to save graph

```ruby
Stackviz.profile(path: 'graph.gif') do
  1000.times { User.all.to_a }
end
```

### Do not open graph automatically

```ruby
Stackviz.profile(open: false) do
  1000.times { User.all.to_a }
end
```

## License

MIT License
