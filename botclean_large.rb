# https://www.hackerrank.com/challenges/botcleanlarge
Dirt = Struct.new(:row, :col)
def get_dirt(board, dimh, dimw)
    dirts = []
    (0..dimh-1).each do |row|
        (0..dimw-1).each do |col|
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

def next_move posr, posc, dimh, dimw, board
    dirts = get_dirt(board, dimh, dimw)
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
dim = gets.split.map {|i| i.to_i}
board = Array.new(dim[0])

(0...dim[0]).each do |i|
    board[i] = gets.strip
end

puts next_move pos[0], pos[1], dim[0], dim[1], board
