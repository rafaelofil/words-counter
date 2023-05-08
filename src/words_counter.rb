TEXT_FILE = "<Path-your-file>"
REFERENCE_TEXT_FILE = "<Path-file-will-want-to-exclude-some-words>"

def words_from_file(text_file)
  File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
  rescue
    puts "Give me #{text_file} and let's get the party started!"
    exit
end

words = words_from_file(TEXT_FILE)
words_to_remove = words_from_file(REFERENCE_TEXT_FILE).uniq

words_to_remove.each do |word|
  words.delete word
end

WORD_COUNT = {}
words.each do |word|
  WORD_COUNT[word] = 0 unless WORD_COUNT[word]
  WORD_COUNT[word] += 1
end
