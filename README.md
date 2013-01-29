BulStem
=================
A Bulgarian stemmer for Ruby

Algorithm
--------------------
The stemmer is an implementation of Preslav Nakov's [BulStem](http://lml.bas.bg/~nakov/bulstem/index.html) algorithm

Levels
------
The stemmer supports 3 levels of stemming - ```LOW```, ```MEDIUM``` and ```HIGH```

Usage
-----
```ruby
# Trivial usage
stemmer = BulStem.new
stemmer.stem 'известен'

# Setting the stemming level
stemmer = BulStem.new
stemmer.set_level BulStem::Level::MEDIUM
stemmer.stem 'известен'

# Setting the stemming level in initialization
stemmer = BulStem.new BulStem::Level::HIGH
stemmer.stem 'известен'
```
