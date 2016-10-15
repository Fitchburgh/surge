require 'active_record'
#
class User < ActiveRecord::Base
  has_one :character

  before_save :adjust_fields

  def adjust_fields
    name.capitalize!
  end
end
