#!/usr/bin/env ruby



if ARGV.size != 2 || ARGV[0].to_i < 1 || ARGV[1].to_i < 1
  Main.print_help
  exit(1)
end

main = Main.new(ARGV[0].to_i, ARGV[1].to_i)
main.run


