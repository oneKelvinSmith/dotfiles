if Gem::Dependency.new('awesome_print').matching_specs.any?
  require 'awesome_print'
  AwesomePrint.pry!
end
