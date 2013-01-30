BulStem
=================
A Bulgarian stemmer for Ruby

Algorithm
--------------------
The stemmer is an implementation of Preslav Nakov's [BulStem](http://lml.bas.bg/~nakov/bulstem/index.html) algorithm

Levels
------
The stemmer supports 3 levels of stemming - ```LOW```(default), ```MEDIUM``` and ```HIGH``` depending on the level of accuracy and errors

Install
--------------------
```gem install bulstem```

Usage
-----
```ruby
require 'bulstem'

# Trivial usage
stemmer = BulStem.new
stem = stemmer.stem 'известен'

# Setting the stemming level
stemmer = BulStem.new
stemmer.level = BulStem::Level::MEDIUM
stem = stemmer.stem 'известен'

# Setting the stemming level in initialization
stemmer = BulStem.new BulStem::Level::HIGH
stem = stemmer.stem 'известен'
```
