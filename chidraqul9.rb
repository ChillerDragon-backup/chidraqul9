#!/usr/bin/ruby

require_relative 'world'
require_relative 'keypresses'
require_relative 'other/os/lib/os'
require_relative 'base'
require_relative 'menu'

$pos=0

def move_right
    if ($pos < $WORLD_SIZE_X)
        $pos += 1
    end
end

def move_left
    if ($pos > 0)
        $pos -= 1
    end
end

def game_main
    loop do
        keypress_tick
        print_world
    end
end

menu = Menu.new
menu.main
