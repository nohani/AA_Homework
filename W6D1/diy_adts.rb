class Stack
    #LIFO
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
        el
    end

    def pop
        @stack.pop()
    end

    def peek
        @stack[-1]
    end

end

####################################

class Queue
    #FIFO
    def initialize(queue)
        @queue = queue
    end

    def enqueue(el)
        @queue.push(el)
        el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end

####################################

class Map 

    def initialize()
        @map = []
    end

    def set(key, value)
        index = @map.index { |pair| pair[0] == key}
        if index
            @map[index][1] = value
        else
            @map << [key, value]
        end
    end

    def get(key)
        @map.each do |ele|
            if ele[0] == key
                return ele[1]
            end
        end
        nil
    end

    def delete(key)
        @map.each_with_index do |ele, i|
            if ele[0] == key
                @map.delete_at(i)
            end
        end
        self.get(key)
    end

    def show

    end

end