require './room'
require 'stringio'
class World
  attr_accessor :world, :first_room
  @world = {}
  class << self

    def load_tiles(name)
      rows = []
      File.open("resources/#{name}.txt", "r") {|file| rows = file.readlines}
      rows_length = rows[0].split("\t").length
      rows.each_with_index do |row, y|
        cols = rows[y].split("\t")
        rows_length.times do |x|
          room_name = cols.gsub("\n", "")
          if room_name == "\t"
            @world[x => y] = nil
          else
            print "X: #{x} Y: #{y}\n"
            @world[x => y] = room_name
            print @world[x => y]
          end
        end
      end
    end
  end
end

World.load_tiles("ship")
