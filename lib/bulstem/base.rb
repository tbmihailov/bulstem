# encoding: UTF-8

class BulStem
  module Level
    LOW = 1
    MEDIUM = 2
    HIGH = 3
  end

  VOCALS = /[^аъоуеияю]*[аъоуеияю]/
  RULE_PATTERN = /([а-я]+)\s==>\s([а-я]+)\s([0-9]+)/

  @@boundary = 1

  attr_reader :level

  def initialize(level=Level::LOW)
    @rules = {} and load_rules level and @level = level
  end

  def level=(level)
    @level = level
    load_rules level
  end

  def stem(word)
    if word.match VOCALS
      0.upto(word.length).each { |i| return word[0...i] + @rules[word[i..-1]] if @rules.include? word[i..-1] }
    end
    word
  end

  private

  def load_rules(level)
    @rules = {}
    file_path = File.dirname(__FILE__) + "/../../rules/stem_rules_context_#{level}.txt"
    File.open file_path, 'r:UTF-8' do |file|
      while line = file.gets
        @rules[$1] = $2 if line.chomp.match RULE_PATTERN and $3.to_i > @@boundary
      end
    end
  end
end