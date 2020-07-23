class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :title
      t.string :author
      t.integer :release
      t.text :description
      t.string :image
      t.timestamps
    end
  end
end
