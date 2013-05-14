# require_relative '../config/environment'
require ::File.expand_path('../../config/environment', __FILE__)

File.open(APP_ROOT + 'dictionary.txt').each_line do |row|
  word = Word.new
  word.word = row.strip
  word.save
end
