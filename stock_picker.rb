def stock_picker(series)
  if series.length == 1
    raise ArgumentError
  end
  
  big_pair = []
  gain = nil
  series.each.with_index do |previous, i|
    series.slice(i..).each.with_index do |current, k| 
      if gain == nil
        gain = current - previous
        big_pair = [i, k + 1 + i]
      end
      if (current - previous) > gain
        gain = current - previous
        big_pair = [i, k + i]
      end
    end 
  end
  big_pair
end
