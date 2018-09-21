#!/usr/bin/ruby

require_relative 'world'
require_relative 'keypresses'
require_relative 'other/os/lib/os'
require_relative 'base'
require_relative 'menu'

$pos=0
$menu = MainMenu.new
$options = Options.new

#entry point
def init_game
    menu_main
end

def menu_main
    $menu.main
end

def options_main
    $options.main
end

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

if __FILE__ == $0
  init_game
end