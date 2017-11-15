class CreateTitles < ActiveRecord::Migration[5.1]
  def change
    create_table :titles do |t|
      t.column :name, :string
      t.column :category_id, :integer
      t.column :author, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
