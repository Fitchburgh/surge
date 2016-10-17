require_relative 'app/models/character'
require_relative 'app/models/loadout'
require_relative 'app/models/standard_spell'
require_relative 'app/models/strong_spell'
require_relative 'app/models/user'
require_relative 'app/models/weak_spell'

require 'pry'
require 'active_record'

# .gsub(/,/, '')
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

WeakSpell.create!(
  name: 'Arcane Dagger',
  power: 1,
  speed: 5
)

WeakSpell.create!(
  name: 'Fire Spit',
  power: 2,
  speed: 6
)

WeakSpell.create!(
  name: 'Rock Toss',
  power: 3,
  speed: 7
)

StandardSpell.create!(
  name: 'Aracane Shot',
  power: 4,
  speed: 8
)

StandardSpell.create!(
  name: 'Fire Spin',
  power: 5,
  speed: 9
)

StandardSpell.create!(
  name: 'Boulder Throw',
  power: 6,
  speed: 10
)

StrongSpell.create!(
  name: 'Arcane Blast',
  power: 7,
  speed: 11
)

StrongSpell.create!(
  name: 'Consume',
  power: 8,
  speed: 12,

)

StrongSpell.create!(
  name: 'Earth Split',
  power: 9,
  speed: 13,

)

Loadout.create!(
  weak_spell_id: 1,
  standard_spell_id: 1,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 1,
  standard_spell_id: 2,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 1,
  standard_spell_id: 3,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 1,
  standard_spell_id: 2,
  strong_spell_id: 2
)

Loadout.create!(
  weak_spell_id: 1,
  standard_spell_id: 2,
  strong_spell_id: 3
)

Loadout.create!(
  weak_spell_id: 1,
  standard_spell_id: 3,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 1,
  standard_spell_id: 3,
  strong_spell_id: 2
)

Loadout.create!(
  weak_spell_id: 1,
  standard_spell_id: 3,
  strong_spell_id: 3
)

Loadout.create!(
  weak_spell_id: 2,
  standard_spell_id: 1,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 2,
  standard_spell_id: 2,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 2,
  standard_spell_id: 2,
  strong_spell_id: 2
)

Loadout.create!(
  weak_spell_id: 2,
  standard_spell_id: 2,
  strong_spell_id: 3
)

Loadout.create!(
  weak_spell_id: 2,
  standard_spell_id: 3,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 2,
  standard_spell_id: 3,
  strong_spell_id: 2
)

Loadout.create!(
  weak_spell_id: 2,
  standard_spell_id: 3,
  strong_spell_id: 3
)

Loadout.create!(
  weak_spell_id: 3,
  standard_spell_id: 1,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 3,
  standard_spell_id: 2,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 3,
  standard_spell_id: 3,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 3,
  standard_spell_id: 3,
  strong_spell_id: 2
)

Loadout.create!(
  weak_spell_id: 3,
  standard_spell_id: 3,
  strong_spell_id: 3
)

Loadout.create!(
  weak_spell_id: 3,
  standard_spell_id: 1,
  strong_spell_id: 1
)

Loadout.create!(
  weak_spell_id: 3,
  standard_spell_id: 1,
  strong_spell_id: 3
)

Loadout.create!(
  weak_spell_id: 3,
  standard_spell_id: 1,
  strong_spell_id: 2
)

Character.create!(
  loadout_id: 1,
  name: 'Tacopies',
  health: 50
  )

Character.create!(
  loadout_id: 15,
  name: 'Nartdawg',
  health: 50
)

Character.create!(
  loadout_id: 12,
  name: 'Rab',
  health: 50
)

Character.create!(
  loadout_id: 2,
  name: 'Lari',
  health: 50
)

Character.create!(
  loadout_id: 5,
  name: 'Kteich',
  health: 50
)

Character.create!(
  loadout_id: 4,
  name: 'Timtum',
  health: 50
)

Character.create!(
  loadout_id: 7,
  name: 'Bruce',
  health: 50
)

Character.create!(
  loadout_id: 8,
  name: 'Skralex',
  health: 50,
  description: ':('
)

Character.create!(
  loadout_id: 18,
  name: 'Gabreel',
  health: 50
)

Character.create!(
  loadout_id: 15,
  name: 'Jenboree',
  health: 50
)

Character.create!(
  loadout_id: 15,
  name: 'Lyser',
  health: 50
)

Character.create!(
  loadout_id: 13,
  name: 'Lienad',
  health: 50
)

User.create!(
  character_id: 1,
  username: 'Fitch',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 2,
  username: 'Nate',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 3,
  username: 'Rob',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 4,
  username: 'Lori',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 5,
  username: 'Kristine',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 6,
  username: 'Tim',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 7,
  username: 'Bryce',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 8,
  username: 'Alex',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 9,
  username: 'Gabe',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 10,
  username: 'Jenn',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 11,
  username: 'Alyssa',
  email: 'asdf',
  password: 'asdf'
)

User.create!(
  character_id: 12,
  username: 'Dan',
  email: 'asdf',
  password: 'asdf'
)
# ActiveRecord::Base.connection.close
