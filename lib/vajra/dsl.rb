module Vajra
  class Dsl
    attr_accessor :parser, :address, :parse_size

    def initialize
      @parser = nil
      @address = nil
      @parse_size = nil
    end
    
    def return_data
      [@parser, @address, @parse_size]
    end
    
    def parser arg
      @parser = arg
    end

    def address arg
      @address = arg
    end

    def parse_size arg
      @parse_size = arg
    end
  end
end
