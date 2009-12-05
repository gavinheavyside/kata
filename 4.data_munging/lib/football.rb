
class Football 
  class << self
    def min_spread(input)
      map = {}
      while line = input.gets
        if fields = line.chomp.split and fields.size > 0
          day = fields[0].chop.to_i || 0 
          if day>0 and day<21
            diff = (fields[6].delete('*').to_i - fields[8].delete('*').to_i).abs
            map[diff] = fields[1]
          end
        end
      end
      map.sort.first.last
    end
  end
end
