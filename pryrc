if Gem::Dependency.new('awesome_print').matching_specs.any?
  require 'awesome_print'
  AwesomePrint.pry!
end

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'f', 'finish'
end
