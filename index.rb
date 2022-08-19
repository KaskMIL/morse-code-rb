# frozen_string_literal: true

MORSE_CODE_DICTIONARY = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '   ' => ' '
}.freeze

def decode_char(morse)
  morse.split.map { |code| MORSE_CODE_DICTIONARY[code] }.join
end

def decode_word(morse_code)
  text = ''
  morse_code.split('   ').each do |word|
    text += "#{decode_char(word)} "
  end
  text.strip
end

puts decode_word('-- -.--   -. .- -- .')
