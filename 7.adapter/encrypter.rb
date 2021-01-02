require './7.adapter/string_i_o_adapter'

class Encrypter
  def initialize(key)
    @key = key
  end

  def encrypt(reader, writer)
    key_index = 0
    while not reader.eof?
      clear_char = reader.getc
      encrypted_char = clear_char ^ @key[key_index]
      write.putc(encrypted_char)
      key_index = (key_index + 1) % @key.size
    end
  end
end

reader = StringIOAdapter.new('Hello! This message is secret.')
writer = File.open('./7.adapter/encrypted_message.txt', 'w')
encrypter = Encrypter.new('secret key')

encrypter.encrypt(reader, writer)
