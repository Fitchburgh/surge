require 'active_record'
#
class CreateSpellList < ActiveRecord::Migration[5.0]
  def up
    create_table :spell_list do |t|
      t.references :weak_spell, foreign_key: true
      t.references :standard_spell, foreign_key: true
      t.references :strong_spell, foreign_key: true
    end
  end

  def down
    drop_table :spell_list
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreateSpellList.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
