class CreateShouts < ActiveRecord::Migration[5.2]
  def change
    create_table :shouts do |t|
      t.string :body, null: false #this is an extra null false validation on the database side.
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
