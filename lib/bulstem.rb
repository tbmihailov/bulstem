class BulStem
  VOCALS = /[^аъоуеияю]*[аъоуеияю]/
  RULE_PATTERN = /([а-я]+)\s==>\s([а-я]+)\s([0-9]+)/

  @@boundary = 1

  def initialize(file_name)
    load_rules file_name
  end

  def load_rules(file_name)
    @rules = {}
    File.open file_name, 'r:UTF-8' do |file|
      while line = file.gets
        @rules[$1] = $2 if line.chomp.match RULE_PATTERN and $3.to_i > @@boundary
      end
    end
  end

  def stem(word)
    match = word.match VOCALS
    return word unless match and word.length > 3
    (3..word.length).each { |i| return word[0...i] + @rules[word[i..-1]] if @rules.include? word[i..-1] }
    word
  end
end
