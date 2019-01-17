
class TicTacToe
  def initialize
    @board = Aray.new(9, " ")
  end
  def board
    @board
  end
  def WIN_COMBINATIONS
    @WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
    ].freeze
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
  #user_input.strip
  user_input.to_i - 1
  end
  
  def move(index, player)
    @board[index] = player
  end
  def position_taken?(location)
    @board[location] != " " && @board[location] != ""
  end
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(@board, index)
  end
  def turn_count
    @board.count {|x| != " "}
  end
  def current_player
    turn_count(@board) % 2 == 0 ? 'X' : 'O'
  end
  def turn
    input = gets.strip
    index = self.input_to_index(input)
  
    if valid_move?(index)
      player = self.current_player
      self.move(index, player)
      self.display_board
    else
      puts('invalid')
      turn(board)
    end
end