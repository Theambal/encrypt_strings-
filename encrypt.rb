require 'digest'

puts 'Введите слово или фразу для шифрования:'

encrypt_string = $stdin.gets.chomp

puts <<~STRING
  Каким способом зашифровать:
  1. MD5
  2. SHA1
STRING

number = $stdin.gets.to_i

result =
  case number
  when 1
    Digest::MD5.hexdigest encrypt_string
  when 2
    Digest::SHA1.hexdigest encrypt_string
  end

puts "Вот что получилось: #{result}"
