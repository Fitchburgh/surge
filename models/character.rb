require 'active_record'
#
class Character < ActiveRecord::Base
  has_one :weak_spell, through: :spell_list
  has_one :standard_spell, through: :spell_list
  has_one :strong_spell, through: :spell_list
  has_one :loadout

  belongs_to :user

  before_save :adjust_fields

  def adjust_fields
    name.capitalize!
  end
end
