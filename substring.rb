


def substrings(word, string_array)
  word_index_length = word.length - 1
  substring_index_array = []
  count_hash = {}
  for i in 0..word_index_length
    subword = []
    index_position = i
    loop do
      subword.push(word[index_position])
      substring_index_array.push(subword.join)
      break if index_position == word_index_length
      index_position += 1
    end
    index_position = i
    subword = []
  end
  substring_index_array.map {|element|
    if string_array.include?(element)
      word_count = substring_index_array.count(element)
      count_hash[element] = word_count
    end
    }
  puts count_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)