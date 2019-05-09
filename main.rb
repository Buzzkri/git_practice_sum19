require "colorize"


def puts_git(cmd)
  puts "git #{cmd} -h"
end

def menu
  puts "MAIN MENU".colorize(:black)
  puts "1: Enter git command".colorize(:yellow)
  puts "2: Exit".colorize(:yellow)
  choice = gets.to_i
  # sleep(3)
  system("clear")
  case choice
  when 1
    puts "Enter git command".colorize(:green)
    puts_git(gets.strip)
    menu
  when 2
    puts "Thanks for using our program!".colorize(:blue)
    exit
  else
    puts "Invalid Input".colorize(:red)
    sleep(0.5)
    # print 'clear'       This isn't working
    menu  
  end
end

menu