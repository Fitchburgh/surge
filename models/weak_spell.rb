require 'active_record'
#
class WeakSpell < ActiveRecord::Base
  belongs_to :spell_list

  before_save :adjust_fields

  def adjust_fields
    name.capitalize!
  end
end
