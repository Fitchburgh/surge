require_relative 'models/character'
require_relative 'models/loadout'
require_relative 'models/standard_spell'
require_relative 'models/strong_spell'
require_relative 'models/user'
require_relative 'models/weak_spell'

require 'yaml'
require 'json'
require 'sinatra'
require 'pry'
require 'sinatra/cross_origin'

# database_config = YAML::load(File.open('config/database.yml'))

before do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
  content_type :json
end

# after do
#   ActiveRecord::Base.connection.close
# end

get '/foo' do
  headers 'Access-Control-Allow-Origin' => '' # HEROKU URL FOR PROJECT
  'hello world'
end

options '/*' do
  response['Access-Control-Allow-Headers'] =
    'origin, x-requested-with, content-type'
end

register Sinatra::CrossOrigin

configure do
  enable :cross_origin
end

get '/' do
  p 'Hello, World!'
end

get '/api/characters-spells' do
  unless params['search'].nil?
    character = Character.where('name like (?)', "%#{params['search']}%").first

    payload = Loadout.where(id: character.loadout_id)

    weak_spell = WeakSpell.where(id: payload[0].weak_spell_id).first
    standard_spell = StandardSpell.where(id: payload[0].standard_spell_id).first
    strong_spell = StrongSpell.where(id: payload[0].strong_spell_id).first

    payload = { 'Character' =>
      { 'Name' => character.name,
        'Health Pool' => character.health,
        'Description' => character.description,
        'Loadout' => { 'Weak Spell' => weak_spell,
                       'Standard Spell' => standard_spell,
                       'Strong Spell' => strong_spell
                        } } }
  end
  halt(404) if payload.empty?
  # binding.pry
  return payload.to_json
end


















#
