#!/usr/bin/ruby
require 'io/console'

class Menu
    def initialize
        @aOptions = [[],[]]
        add_option("hello", Proc.new { puts "hello world" })
        add_option("start", Proc.new { game_main })
    end

    def add_option(name,function)
        @aOptions[0].push(function)
        @aOptions[1].push(name)
    end

    def select(row)
        @aOptions[0][row].call
    end

    def print_options(row)
        @aOptions[1].each_with_index {
            |x, index|
            if (index===row)
                puts "> #{x} <"
            else
                puts "  #{x}  "
            end
        }
    end

    def print(row)
        cls
        puts "+-----------------------------+"
        puts "|        chidraqul9           |"
        puts "+-----------------------------+"
        puts "| q=quit w,s=choose e=select  |"
        puts "+-----------------------------+"
        print_options(row)
        puts ""
        puts "row: #{row}"
    end

    def keypresses(row)
        c = STDIN.getch
        if (c === "q")
            exit
        elsif (c === "e")
            select(row)
        elsif (c === "w")
            if (row > 0)
                row -= 1
            end
        elsif (c === "s")
            if (row < @aOptions[0].count - 1)
                row += 1
            end
        end
        return row
    end

    def main(row=0)
        loop do
            print(row)
            row = keypresses(row)
        end
    end
end
