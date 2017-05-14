#!/usr/bin/env ruby

# Loading all other scripts
%w|./node.rb ./graph.rb ./astar.rb|.each do |l|
  raise LoadError,
    "cannot load required file #{l}" unless load l
end

# Loading external file with the dungeon
dungeon = File.open("dungeon.txt", "r").read
require 'pry'

# Creating the graph
graph = Graph.new(dungeon)

# Creating the astar object
astar = ASTAR.new(graph.start, graph.stop)
# Performing the search
path  = astar.search

# Printing the result on screen
puts graph.to_s(path)

exit 0
