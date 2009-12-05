
class Weather 
  class << self
    def day_with_min_spread(input)
      map = {}
      while line = input.gets
        fields = line.chomp.split
        day = fields[0].to_i
        if day>0 and day<32
          diff = (fields[2].delete('*').to_i - fields[1].delete('*').to_i).abs
          map[diff] = day
        end
      end
      map.sort.first.last
    end
  end
end
