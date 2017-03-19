require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid
  include Dance #this includes methods to be used as instance methods
  extend MetaDancing #this extends methods to be used as class methods
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end


end
