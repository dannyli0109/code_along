class Queens

  def initialize(white: [0, 3], black: [7, 3])


    raise ArgumentError, 'Argument Error' unless white != black


    @queen_black = black
    @queen_white = white

  end

  def white
    @queen_white
  end

  def black
    @queen_black
  end

  def to_s
    board = []
    i = 0
    for i in 0...8
      board_row = "OOOOOOOO".split("")
      board.push(board_row)
    end

    board[@queen_white[0]][@queen_white[1]] = "W"
    board[@queen_black[0]][@queen_black[1]] = "B"

    return_string = ""
    board.each do |board_row|
      row_string = board_row.join(" ")
      row_string += "\n"
      return_string += row_string
    end



    return_string.chop

  end
  def attack?
    if @queen_white[0] == @queen_black[0]
      return true
    end
    if @queen_white[1] == @queen_black[1]
      return true
    end

    for j in 0...8

        if @queen_white[0]+j == @queen_black[0] && @queen_white[1]+j == @queen_black[1]
          return true
        end
    end

    false
  end


end
