class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.column :genre, :string

      t.timestamps
    end
  end
end

# example to make a new column:
# rails generate migration add_column-name_to_table-name column-name:string


#rails db:migrate

#rails db:test:prepare
