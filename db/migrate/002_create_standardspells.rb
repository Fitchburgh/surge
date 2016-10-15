require 'active_record'
#
class CreateStandardspells < ActiveRecord::Migration[5.0]
  def up
    create_table :standard_spells do |t|
      t.string :name
      t.integer :power
      t.integer :speed
      t.string :description, null: false, default: 'At least be a little creative...'
    end
  end

  def down
    drop_table :standard_spells
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreateStandardspells.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
