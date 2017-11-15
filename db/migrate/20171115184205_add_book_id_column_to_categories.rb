class AddBookIdColumnToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :book_id, :integer
  end
end
