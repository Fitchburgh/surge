require_relative 'models/character'
require_relative 'models/loadout'
require_relative 'models/standard_spell'
require_relative 'models/strong_spell'
require_relative 'models/user'
require_relative 'models/weak_spell'

require 'pry'
require 'active_record'

# .gsub(/,/, '')
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

WeakSpell.create!(
  name: 'Arcane Dagger',
  power: 1,
  speed: 5,
  description: 'test'
)

WeakSpell.create!(
  name: 'Fire Spit',
  power: 2,
  speed: 6,
  description: 'test'
)

WeakSpell.create!(
  name: 'Rock Toss',
  power: 3,
  speed: 7,
  description: 'test'
)

StandardSpell.create!(
  name: 'Aracane Shot',
  power: 4,
  speed: 8,
  description: 'test'
)

StandardSpell.create!(
  name: 'Fire Spin',
  power: 5,
  speed: 9,
  description: 'test'
)

StandardSpell.create!(
  name: 'Boulder Throw',
  power: 6,
  speed: 10,
  description: 'test'
)

StrongSpell.create!(
  name: 'Arcane Blast',
  power: 7,
  speed: 11,
  description: 'test'
)

StrongSpell.create!(
  name: 'Consume',
  power: 8,
  speed: 12,
  description: 'test'
)

StrongSpell.create!(
  name: 'Earth Split',
  power: 9,
  speed: 13,
  description: 'test'
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
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 15,
  name: 'Nartdawg',
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 12,
  name: 'Rab',
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 2,
  name: 'Lari',
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 5,
  name: 'Kteich',
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 4,
  name: 'Timtum',
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 7,
  name: 'Bruce',
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 8,
  name: 'Skralex',
  health: 50,
  notes: ':('
)

Character.create!(
  loadout_id: 18,
  name: 'Gabreel',
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 15,
  name: 'Jenboree',
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 15,
  name: 'Lyser',
  health: 50,
  notes: "Can't beat it"
)

Character.create!(
  loadout_id: 13,
  name: 'Lienad',
  health: 50,
  notes: "Can't beat it"
)

User.create!(
  character_id: 1,
  username: 'Fitch',
  password: 'asdf'
)

User.create!(
  character_id: 2,
  username: 'Nate',
  password: 'asdf'
)

User.create!(
  character_id: 3,
  username: 'Rob',
  password: 'asdf'
)

User.create!(
  character_id: 4,
  username: 'Lori',
  password: 'asdf'
)

User.create!(
  character_id: 5,
  username: 'Kristine',
  password: 'asdf'
)

User.create!(
  character_id: 6,
  username: 'Tim',
  password: 'asdf'
)

User.create!(
  character_id: 7,
  username: 'Bryce',
  password: 'asdf'
)

User.create!(
  character_id: 8,
  username: 'Alex',
  password: 'asdf'
)

User.create!(
  character_id: 9,
  username: 'Gabe',
  password: 'asdf'
)

User.create!(
  character_id: 10,
  username: 'Jenn',
  password: 'asdf'
)

User.create!(
  character_id: 11,
  username: 'Alyssa',
  password: 'asdf'
)

User.create!(
  character_id: 12,
  username: 'Dan',
  password: 'asdf'
)
# ActiveRecord::Base.connection.close
