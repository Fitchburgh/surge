require_relative 'app/models/character'
require_relative 'app/models/loadout'
require_relative 'app/models/standard_spell'
require_relative 'app/models/strong_spell'
require_relative 'app/models/user'
require_relative 'app/models/weak_spell'

# require 'slim'
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

# set :views, Proc.new { File.open("app/views/") }

# get '/' do
#   slim :index
# end
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

get '/api/character-list' do
  unless params['search'].nil?
  character = Character.where('name like(?)', "%#{params['search']}%").first
  end
  character.to_json
  # slim :index
end

get '/api/character-spells' do
  # slim :index
  unless params['search'].nil?
    character = Character.where('name like (?)', "%#{params['search']}%").first

    # grab specific characters loadout ID's
    payload = Loadout.where(id: character.loadout_id).first

    # grab spell statistics
    weak_spell = WeakSpell.where(id: payload.weak_spell_id).first
    standard_spell = StandardSpell.where(id: payload.standard_spell_id).first
    strong_spell = StrongSpell.where(id: payload.strong_spell_id).first

    # return nested hash with all info
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
  # content_type :json
  return payload.to_json
end

get '/api/my-character' do
  # slim :index
  character = Character.where('name like (?)', "%#{params['search']}%").first

  # grab specific characters loadout ID's
  payload = Loadout.where(id: character.loadout_id).first

  # grab spell statistics
  weak_spell = WeakSpell.where(id: payload.weak_spell_id).first
  standard_spell = StandardSpell.where(id: payload.standard_spell_id).first
  strong_spell = StrongSpell.where(id: payload.strong_spell_id).first

  # return nested hash with all info
  payload = { 'character' =>
    { 'name' => character.name,
      'healthPool' => character.health,
      'description' => character.description,
      'loadout' => { 'weakSpell' => weak_spell,
                     'standardSpell' => standard_spell,
                     'strongSpell' => strong_spell
                      } } }
  halt(404) if payload.empty?
  # binding.pry
  # content_type :json
  return payload.to_json
end

# post '/api/registrations' do
#   @user = User.new(name: params[:name], password: params[:password])
#   @user.save if @user.valid?
#   status 201
#   session[:id] = @user.id
#   redirect '/users/home'
#   content_type :json
#   return @user.to_json
# end
#
