BulStem
=================
A Bulgarian stemmer for Ruby

Algorithm
--------------------
The stemmer is an implementation of Preslav Nakov's [BulStem](http://lml.bas.bg/~nakov/bulstem/index.html) algorithm

Usage
-----
```ruby
stemmer = BulStem.new 'stem_rules_context_1.txt'
stemmer.stem 'известен'
```
