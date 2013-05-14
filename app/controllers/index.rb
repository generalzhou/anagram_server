get '/:word' do
  word = Word.new(word: params[:word])
  anagram_array = word.anagrams.map {|w| w.word}
  anagram_array.delete(@word)
  anagram_array = ['No anagrams :('] if anagram_array.empty?
  @anagrams = anagram_array.join('<br>')
  erb :index
end
