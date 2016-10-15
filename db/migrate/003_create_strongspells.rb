require 'active_record'
#
class CreateStrongspells < ActiveRecord::Migration[5.0]
  def up
    create_table :strong_spells do |t|
      t.string :name
      t.integer :power
      t.integer :speed
      t.string :description
    end
  end

  def down
    drop_table :strong_spells
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreateStrongspells.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
