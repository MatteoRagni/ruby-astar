#!/usr/bin/env ruby

##
# The Node class contains everything that is necessary to describe
# a complete graph. The node has a description of the edge to the previous
# Node (@prev), and an Array of edges to the next Nodes (@near).
#
# The Node contains also
#  - @r, @c: indication of the position of the node
#  - @prev: the edge to previous position
#  - @next: the edges to next positions
#  - @h: the heuristic distance to the stop node
#  - @g: the heuristic distance to the start node
# The total heuristic distance is the sum of (@g + @h)
class Node
  attr_accessor :g, :h, :prev
  attr_reader :r, :c, :near

  ##
  # Initialize an empty new Node. The only informations it has
  # are the coordinates (r, c).
  def initialize(r, c)
    [r, c].each do |input|
      raise ArgumentError,
        "input must be a Numeric.\n" + 
        "Received a #{input.class}" unless input.is_a? Numeric
    end
    @r = r
    @c = c
    
    @g = 0.0
    @h = 0.0
    
    @prev = nil
    @near = []
  end
  
  ##
  # The total heuristic distance
  def f
    self.g + self.h
  end
  
  ##
  # Evaluates the distance of the current node with another 
  # node n.
  def distance(n)
    raise ArgumentError,
      "A Node must be given as input.\n" +
      "Received a #{n.class}" unless n.is_a? Node
    return (
      (@r - n.r) ** 2 +
      (@c - n.c) ** 2
    ) ** (0.5)
  end

  ##
  # Add a new edge to a Node in the edges list @near.
  def insert(n)
    raise ArgumentError,
      "A Node must be given as input.\n" +
      "Received a #{n.class}" unless n.is_a? Node
    @near << n
  end
end # Node

