require 'hammer-parser'
require 'bindata'
module Vajra
  class Parser
    attr_accessor :parser, :address, :parse_size, :section_data
    def initialize(parser, address, parse_size)
      # Validation was done by the front facing interface
      # No validation here
      @parser = parser
      @address = address
      @parse_size = parse_size
      @section_data = create_section
      write_section
    end

    private def string_section(string)
      str = BinData::Stringz.new(string)
      leng = BinData::Int8be.new(str.to_binary_s.length)
      leng.to_binary_s + str.to_binary_s
    end
    
    private def create_section
      parse_size = BinData::Int16be.new(@parse_size)
      string_section(@parser) + string_section(@address) + parse_size.to_binary_s
    end

    private def write_section
      file = File.open("/tmp/vajra", "w")
      file.write(@section_data)
    end
  end
end
