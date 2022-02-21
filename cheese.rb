# frozen_string_literal: true

require 'optparse'

@options = {}

OptionParser.new do |opts|

  opts.on('-rl', '--red-leicester', 'Find out about the cheese') do
    @options[:red_leicester] = 'Red Leicester is an English cheese, made in a similar manner to Cheddar cheese, although it is crumbly in texture, and typically sold at 6 to 12 months of age. The rind is reddish-orange, with a powdery mould on it.'
  end

  opts.on('-c', '--cheddar', 'Find out about the cheese') do
    @options[:cheddar] = 'Cheddar cheese (or simply cheddar) is a relatively hard, off-white sometimes sharp-tasting, natural cheese.'
  end

  opts.on('-p', '--parmesan', 'Find out about the cheese') do
    @options[:parmesan] = "Parmesan is an Italian hard, granular cheese produced from cow's milk and aged at least 12 months. It is named after the producing areas, the provinces of Reggio Emilia, Parma, the part of Bologna west of the Reno, and Modena; and the part of Mantua on the right/south bank of the Po."
  end

  opts.on('-cm', '--casu-marzu', 'Find out about the cheese') do
    @options[:casu_marzu] = 'Those with a weak stomach may want to stop reading now, as there is an Italian cheese delicacy that is not for the faint of heart.'
  end
end.parse!

p @options
