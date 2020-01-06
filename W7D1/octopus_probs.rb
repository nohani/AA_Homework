

#At it's worst and average case, Bubble Sort has O(n^2)

def sluggish_octopus(array)

    sorted = false 

    while !sorted 
        sorted = true
        i = 0 
        while i < array.length - 1
            if array[i].length > array[i+1].length
                array[i], array[i+1] = array[i+1], array[i]
                sorted = false
            end
        i += 1
        end
    end

    array[-1]
end



p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

#######################################

class Array
    
    def merge_sort(&prc)
        prc ||= Proc.new{|a, b| a <=> b}

        return self if self.length <= 1

        middle = self.length / 2
        left = self.take(middle).merge_sort(&prc)
        right = self.drop(middle).merge_sort(&prc)

        merge(left, right, &prc)
    end

    private

    def merge(left, right, &prc)

        merged = []
        until left.empty? || right.empty?
            case prc.call(left.first, right.first)
            when -1
                merged << left.shift
            when 0
                merged << left.shift
            when 1
                merged << right.shift
            end
        end

        merged + left + right
    end

end

def dominant_octopus(array)
    sorted = array.merge_sort{ |a, b| b.length <=> a.length}  
    
    sorted[0]
end

p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

#######################################

def clever_octopus(array)

    longest_fish = array[0]

    array.each do |ele|
        if longest_fish.length < ele.length
            longest_fish = ele
        else
            next
        end
    end
    longest_fish

end

p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

#######################################

def slow_dance(direction, tiles_array)

    i = 0 
    while i < tiles_array.length
        if direction == tiles_array[i]
            return i
        end
        i += 1
    end

nil
end

p slow_dance("up", ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ])
p slow_dance("right-down", ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ])

#######################################

def constant_dance2(direction, tiles_array)
tiles_array.index(direction)
end

new_tiles_data_structure = {
    "up" => 0, 
    "right-up" => 1,
    "right" => 2, 
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
     "left" => 6,  
     "left-up" => 7
}

def constant_dance(direction, new_tiles_data_structure)
new_tiles_data_structure[direction]
end

p constant_dance("up",new_tiles_data_structure )
p constant_dance("right-down", new_tiles_data_structure)
