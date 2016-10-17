require 'active_record'
#
class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.references :character, foreign_key: true
      t.string :username
      t.string :password
      t.string :email
      t.string :notes, null: false, default: 'At least be a little creative...'
    end
  end

  def down
    drop_table :users
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreateUsers.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
