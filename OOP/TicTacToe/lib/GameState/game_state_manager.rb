# frozen_string_literal: true

require_relative "../Display/display"

class GameStateManager
  attr_accessor :player_1_move

  def initialize
    @player_1_move = true
    @game_running = true
    @tiles = Array.new(3) { Array.new(3, -1) }
    run_game
    display_game_result
  end

  def run_game
    loop do
      Display.update_display(@tiles)
      puts "It's #{player_1_move == true ? 'Player 1' : 'Player 2'}'s turn!"
      gather_input
      break if game_over?
    end
  end

  def gather_input
    loop do
      input = gets.chomp
      if input_is_valid?(input)
        make_move(input)
        break
      else
        puts "Input is invald, enter a number such as 00, 01, 02, 10, 11, 12, 20, 21, 22!"
      end
    end
  end

  def game_over?
    false
  end

  def display_game_result
    puts "Player 1 won!"
  end

  def input_is_valid?(input)
    return false if input.length > 2

    begin
      result_x = Integer(input.chars[0])
      result_y = Integer(input.chars[1])
    rescue ArgumentError, TypeError
      return false
    end
    result_x.between?(-1, 3) && result_y.between?(-1, 3)
  end

  def make_move(input)
    puts "Input is #{input}"
    char1 = input.chars[0].to_i
    char2 = input.chars[1].to_i
    @tiles[char1][char2] = player_1_move == true ? 0 : 1
    self.player_1_move = !player_1_move
  end
end
