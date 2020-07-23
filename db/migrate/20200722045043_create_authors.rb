class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :from
      t.string :image
      t.timestamps
    end
  end
end
