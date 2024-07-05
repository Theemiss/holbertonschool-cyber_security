class CaesarCipher
    def initialize(shift)
      @shift = shift
    end
  
    def encrypt(message)
      cipher(message, @shift)
    end
  
    def decrypt(message)
      cipher(message, -@shift)
    end
  
    private
  
    def cipher(message, shift)
      shifted_message = ""
      message.each_char do |char|
        if char =~ /[a-zA-Z]/
          base = char =~ /[a-z]/ ? 'a'.ord : 'A'.ord
          shifted_char = (((char.ord - base + shift) % 26) + base).chr
          shifted_message += shifted_char
        else
          shifted_message += char
        end
      end
      shifted_message
    end
  end
