#!/usr/bin/env ruby

def chop1(target, data, floor=0)
  unless data.empty?
    midpoint = (data.size-1)/2
    if data[midpoint] > target
      return chop(target, data[0..midpoint], floor) unless data.size<2
    elsif data[midpoint] < target
      return chop(target, data[midpoint+1..-1], floor+midpoint+1) unless data.size<2
    else
      return floor+midpoint
    end
  end
  return -1
end

def chop(target, data)
  puts "#{target}: #{data.join(',')}"
  first = 0
  last = data.size
  runaway = 10
  while first<last and runaway>0 do
    puts first
    puts last
    mid = (last-1-first)/2
    puts mid
    puts
    if data[mid] > target
      first = mid+1
    elsif data[mid] < target
      last = mid
    else
      return mid
    end
    runaway -= 1
  end
  return -1
end

