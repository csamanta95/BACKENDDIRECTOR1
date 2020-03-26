class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.integer :director_id
      t.string :name
      t.string :image
      t.integer :age
      t.string :experience

      t.timestamps
    end
  end
end
