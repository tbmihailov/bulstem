# BulStem
---------

A Bulgarian stemmer for Ruby

## Algorithm

The stemmer is an implementation of Preslav Nakov's [BulStem](http://lml.bas.bg/~nakov/bulstem/index.html) algorithm

## Levels

The stemmer supports 3 levels of stemming - ```LOW```(default), ```MEDIUM``` and ```HIGH``` depending on the level of accuracy and errors

## Install

```
gem install bulstem
```

## Usage

```ruby
require 'bulstem'

# Trivial usage
stemmer = BulStem.new
stemmer.stem 'известен'
# 'изв'

# Setting the stemming level
stemmer = BulStem.new
stemmer.level = BulStem::Level::MEDIUM
stemmer.stem 'известен'
# 'извест'

# Setting the stemming level in initialization
stemmer = BulStem.new BulStem::Level::HIGH
stemmer.stem 'известен'
# 'извест'
```

## Copyright

Copyright (c) 2013 Stanislav Gatev. See LICENSE.rdoc for further details.
