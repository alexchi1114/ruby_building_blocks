def stock_picker(array)
	stocks={}
	for i in 0...array.length
		stocks[array[i]]=i
	end
	best=array.min-array.max
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

test=[1,4,8,10,34,0,2]

puts stock_picker(test)