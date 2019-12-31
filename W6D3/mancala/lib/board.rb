class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){[]}
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    self.cups.each_with_index do |cup, i|
      if i != 6 && i != 13
        4.times {cup << :stone}
      end
    end

    self.cups

  end

  def valid_move?(start_pos)
    if !(0..5).include?(start_pos) && !(7..12).include?(start_pos)
        raise "Invalid starting cup"
    elsif self.cups[start_pos].empty?
        raise "Starting cup is empty"
    end   
  end

  def make_move(start_pos, current_player_name)
    hand = self.cups[start_pos] 
    self.cups[start_pos] = []

      i = (start_pos + 1) % self.cups.length
      while i < self.cups.length
        if !hand.empty?
          if current_player_name == @name1
            self.cups[i % self.cups.length] << hand.shift unless self.cups[13]
          elsif current_player_name == @name2
            self.cups[i % self.cups.length] << hand.shift unless self.cups[6]
          else 
            self.cups[i % self.cups.length] << hand.shift
          end
        end
      i += 1
      end

      self.render
    end


  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
