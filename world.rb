require './room'
require 'stringio'
class World
  attr_accessor :world, :first_room
  @world = {}
  def self.world
    @world
  end
  class << self
    def load_tiles(name)
      rows = []
      File.open("resources/#{name}.txt", "r") {|file| rows = file.readlines}
      rows_length = (rows[0].split("\t")).length
      rows.each_with_index do |row, y|
        cols = rows[y].split("\t")
        rows_length.times do |x|
          room_name = cols[x].gsub("\n", '') if cols[x]
          if room_name == ""
            @world[x => y] = nil
          else
            @world[x => y] = room_name
          end
        end
      end
    end
  end
end

World.load_tiles("ship")
puts World.world
