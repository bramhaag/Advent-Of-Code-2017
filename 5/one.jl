input = Array{Int64}(1)

open("input.txt") do f
    lines = readlines(f)
    
    resize!(input, length(lines))

    for i in 1:length(lines) 
        input[i] = parse(Int64, replace(lines[i], "\n", ""))
    end
end

counter = 0
index = 1
prevIndex = 1
while(true)
    counter += 1
    prevIndex = index
    index += input[index]

    if(index > length(input))
        break
    end

    input[prevIndex] += 1
end

println("Solved in $counter steps")