require 'set'

class GraphNode

    attr_accessor :val, :neighbors

    def initialize(value)
        @value
        @neighbors = []
    end

end

# def bfs(starting_node, target_value)
#     visited = Set.new()
#     queue = [starting_node]

#     until queue.empty?
#         popped_off = queue.shift
#         unless visited.include?(popped_off)
#             if popped_off.val == target_value
#                 return popped_off.val
#             else
#                 visited.add(popped_off)
#                 queue += popped_off.neighbors
#             end
#         end
#     end
# nil
# end


def bfs(starting_node, target_value)
  queue = [starting_node]
  visited = Set.new()

  until queue.empty?
    node = queue.shift
    unless visited.include?(node)
      return node.val if node.val == target_value
      visited.add(node)
      queue += node.neighbors
    end
  end
  
  return nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "f")
