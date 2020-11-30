class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
