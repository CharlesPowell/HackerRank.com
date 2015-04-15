#https://www.hackerrank.com/challenges/maximizing-xor
def maxXor(l, r)
    max = 0
    (l..r).each do |a|
        (a..r).each do |b|
            if(max < (a^b))
                max = a ^ b
            end
        end
    end
    return max

end
l = gets.to_i
r = gets.to_i
print maxXor(l, r)
