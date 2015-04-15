#  https://www.hackerrank.com/contests/software-challenge/challenges/secure-password-system
def secure?(min, max)
    total = 0
    (min..max).each do |n|

        total += 10**n
    end
    if total > 10**6
        return 'YES'
    else
        return 'NO'
    end
end
 len = gets.to_i
 puts(len)
 (1..len).each do
        min = gets.to_i
        max = gets.to_i
        puts min +" " +max

   secure?(min, max)
 end
