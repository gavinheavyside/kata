#!/usr/bin/env ruby

def chop(target, data)
  offset = 0
  while not data.empty?
    mid = (data.size-1)/2
    if data[mid]==target
      return offset+mid
    elsif data.size==1
      return -1
    elsif data[mid]>target
      data = data.values_at(0..mid)
    else data[mid]<target
      data = data.values_at(mid+1..-1)
      offset += mid+1
    end
  end
  return -1
end


def chop3(target, data)
  data.index(target) || -1
end


def chop2(target, data)
  first = 0
  last = data.size
  while first<last do
    mid = first + ((last-1-first)/2)

    if data[mid] < target
      first = mid+1
    elsif data[mid] > target
      last = mid
    else
      return mid
    end
  end
  return -1
end


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

