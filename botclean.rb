# https://www.hackerrank.com/challenges/botclean
Dirt = Struct.new(:row, :col)
def get_dirt(board)
    dirts = []
    n = board[0].length
    (0..n-1).each do |row|
        (0..n-1).each do |col|
            if (board[row][col] == 'd')
                dirts.push(Dirt.new(row, col))
            end
        end
    end
    return dirts
end

def closest_dirt(posr, posc, dirts)
    jumps = (dirts[0].row - posr).abs + (dirts[0].col - posc).abs
    index = 0;
    (1..dirts.length-1).each do |i|
        delta = (dirts[i].row - posr).abs + (dirts[i].col - posc).abs
        if(delta < jumps)
            jumps = delta
            index = i
        end
    end
    return index
end

def nextMove posr, posc, board
    dirts = get_dirt(board)
    close_dirt = closest_dirt(posr, posc, dirts)
    if dirts[close_dirt].row == posr && dirts[close_dirt].col == posc
        puts 'CLEAN'
        return
    elsif dirts[close_dirt].row == posr
       if dirts[close_dirt].col <  posc
           puts 'LEFT'
           return
       else
           puts 'RIGHT'
           return
       end
    elsif dirts[close_dirt].col == posc
        if dirts[close_dirt].row <  posr
           puts 'UP'
           return
        else
           puts 'DOWN'
           return
        end
    else
        if dirts[close_dirt].col < posc
            puts 'LEFT'
            return
        else
            puts 'RIGHT'
            return
        end

    end

end

pos = gets.split.map {|i| i.to_i}
board = Array.new(5)

(0...5).each do |i|
    board[i] = gets.strip
end

puts nextMove pos[0], pos[1], board
