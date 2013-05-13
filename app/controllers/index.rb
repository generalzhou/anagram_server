get '/:word' do
  @word = params[:word]
  anagram_array = Word.new(word: @word).anagrams.map {|word| word.word}
  anagram_array.delete(@word)
  anagram_array = ['No anagrams :('] if anagram_array.empty?
  @anagrams = anagram_array.join('<br>')


  erb :index
end
