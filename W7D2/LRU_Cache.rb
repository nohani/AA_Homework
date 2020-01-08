  class LRUCache
    attr_reader :size, :length
    def initialize(num)
        @underlying_array = Array.new(num)
        @size = num
        @length = underlying_array.length
    end

    def count
      underlying_array.count {|ele| ele != nil}
    end

    def add(el)
      if !underlying_array.include?(el)
        underlying_array.shift 
        underlying_array.push(el)
      else
        index = underlying_array.index(el)
        underlying_array.delete_at(index)
        underlying_array.push(el)
      end
    end

    def show
      deep_dup(underlying_array)
    end

    private
      attr_accessor :underlying_array

      def deep_dup(array)
        duped = []
        array.each do |ele|
            if ele.is_a?(Array)
                duped << deep_dup(ele)
            else
                duped << ele
            end
        end
        duped
      end

  end