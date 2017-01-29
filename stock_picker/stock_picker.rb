def stock_picker(array)
	best=array.min-array.max-1
	best_hash={}
	i=0
	while i<array.length
		for j in (i+1)...array.length
			difference=array[j]-array[i]
			if difference>best
				best=difference
				best_hash={
					[i,j] => difference
				}
			end
		end
		i+=1
	end
	if best<0
		best_hash={
			[0,0]=>0
		}
	end
	return best_hash
end

test=[3,3,3,3]

puts stock_picker(test)