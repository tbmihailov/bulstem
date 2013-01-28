class BulStem
  @@boundary = 1
  @@vocals = /[^аъоуеияю]*[аъоуеияю]/
  @@pattern = /([а-я]+)\s==>\s([а-я]+)\s([0-9]+)/

  def initialize(file_name)
    @rules = {}
    load_rules file_name
  end

  def load_rules(file_name)
    open file_name, 'r:UTF-8' do |file|
      while line = file.gets
          match = line.match @@pattern
          @rules[match[1]] = match[2] if match and match.length > 3 and match[3].to_i > @@boundary
      end
    end
  end

  def stem(word)
    match = word.match @@vocals
    return word unless match and word.length > 3
    (3..word.length).each do |i|
      return word[0...i] + @rules[word[i..-1]] if @rules.include? word[i..-1]
    end
    word
  end
end