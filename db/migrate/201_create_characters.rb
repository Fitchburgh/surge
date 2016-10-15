require 'active_record'
#
class CreateCharacters < ActiveRecord::Migration[5.0]
  def up
    create_table :characters do |t|
      t.references :loadout, foreign_key: true
      t.string :name
      t.integer :health
      t.string :description, null: false, default: 'At least be a little creative...'
    end
  end

  def down
    drop_table :characters
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreateCharacters.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
