$code = {
  ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E",
   "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J",
   "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",
   ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T", "..-" => "U",
   "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y", "--.." => "Z",
   ".----" => "1", "..---" => "2", "...--" => "3", "....-" => "4", "....." => "5",
   "-...." => "6", "--..." => "7", "---.." => "8", "----." => "9", "-----" => "0" 
}

def decode_char(char)
  return $code[char]
end

def decode_word(word)
  split = word.split(" ")
  return split.map { |char| decode_char(char) }.join("")
end

def decode(message)
  split = message.split("  ")
  return split.map { |word| decode_word(word) }.join(" ")
end

decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
# "A BOX FULL OF RUBIES"
