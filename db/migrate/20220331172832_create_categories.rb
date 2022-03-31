class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :display_in_sidebar, default: true

      t.timestamps
    end
  end
end
