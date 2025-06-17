# frozen_string_literal: true

class Display
  PLAYER_1_MARK = "X"
  PLAYER_2_MARK = "O"
  VERTICAL_DELIMINATOR = "|"
  HORIZONTAL_DELIMINATOR = "-"

  def self.update_display(tiles)
    tiles.each do |row|
      mark = ""
      row.each do |cell|
        mark += if cell == -1 then "[ ]"
                else
                  cell == 1 ? "[#{PLAYER_2_MARK}]" : "[#{PLAYER_1_MARK}]"
                end
      end
      puts mark
    end
  end
end
