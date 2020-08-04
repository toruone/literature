class DeleteAuthorToWork < ActiveRecord::Migration[6.0]
  def change
    remove_column :works, :author, :string
  end
end
