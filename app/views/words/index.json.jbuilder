json.array!(@words) do |word|
  json.extract! word, :id, :word1, :word2, :anagrama
  json.url word_url(word, format: :json)
end
