class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = []
    @game_over = false

    self.play
  end

  def play
    until self.game_over == true
      self.take_turn
      system("clear")
    end

    self.game_over_message
    self.reset_game
  end

  def take_turn
      self.show_sequence
      self.require_sequence

    if self.game_over == false
      self.round_success_message
      self.sequence_length += 1
    end

  end

  def show_sequence
    self.add_random_color
    self.seq.each do |color|
      puts "#{color}"
      sleep 0.75
      system("clear")
      sleep(0.25)
    end
  end

  def require_sequence
    puts "Enter the sequence with a space in between each color i.e.`red green blue`"
    user_input = gets.chomp.split(" ")

    if user_input != self.seq
      self.game_over = true
    end

  end

  def add_random_color
    colors = ["red", "blue", "yellow", "green"]
    self.seq << colors.sample
  end

  def round_success_message
    puts "You made it through this round, can you handle another?"
    sleep 0.75
  end

  def game_over_message
    puts "The game is over, but good job! Your sequence length was #{self.sequence_length}"
    sleep 0.75
  end

  def reset_game
    self.seq = []
    self.sequence_length = 1
    self.game_over = false
  end
end

s = Simon.new