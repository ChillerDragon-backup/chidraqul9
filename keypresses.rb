#!/usr/bin/ruby

def read_char
    system("stty raw -echo")
    c = STDIN.read_nonblock(1) rescue nil
    system("stty -raw echo")
    return c
end

def keypress_tick
    c = read_char
    if (c === "q")
        exit
    elsif (c === "d")
        move_right
    elsif (c === "a")
        move_left
    elsif (c === "w")
        move_up
    elsif (c === "s")
        move_down
    end
end
