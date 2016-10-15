require_relative 'models/armor'
require_relative 'models/weapon'
require_relative 'models/character'
require 'pry'
require 'active_record'

# .gsub(/,/, '')
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL']) #(ENV['DATABASE_URL'])

Armor.create!(
  armor_slot: 'helm',
  armor_name: 'wooden',
  description: 'Probably not going to protect you from more than a fist or rock'
)
# ActiveRecord::Base.connection.close
