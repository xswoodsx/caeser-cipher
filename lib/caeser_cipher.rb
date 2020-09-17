# caeser cipher task on project odin

def caeser_cipher(string, value)
  string.bytes.map! do |byte|
    case byte
    when 65..90 then shift(byte + value, 65, 90).chr
    when 97..122 then shift(byte + value, 97, 122).chr
    else byte.chr
    end
  end.join
end

def shift(byte, low_boundary, high_boundary)
  if byte > high_boundary
    low_boundary - (high_boundary - byte) - 1
  else
    byte
  end
end
