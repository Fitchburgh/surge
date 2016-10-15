require 'active_record'
#
class Loadout < ActiveRecord::Base
  has_one :weak_spell
  has_one :standard_spell
  has_one :strong_spell

  belongs_to :character
end
