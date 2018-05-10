require 'bindata'
module Vajra
  class FileFormat < BinData::Record
    endian :little
    uint16 :len_parser
    string :parser, :read_length => :len_parser
    uint16 :len_address
    string :address, :read_length => :len_address
    uint16 :parse_size
  end
end
