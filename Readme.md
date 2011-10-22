# Acts as chain

Define a set methods that should be chainable.

## Example

``` ruby
require "acts_as_chain"

class MyExampleClass
  acts_as_chain :method1, :method2
end

MyExampleClass.new.method1("value1").method2("value2").method1 # => "value1"
```

## Installation

    [sudo] gem install acts_as_chain

## Requirements

*acts_as_chain* is tested in *OS X 10.7.2* using Ruby *1.9.2*, *1.8.7*.

## License

*acts_as_chain* is released under the *MIT license*.