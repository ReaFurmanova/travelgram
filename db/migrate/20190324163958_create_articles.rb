class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :text
      t.string :country
      t.float :latitude
      t.float :longtitude
      t.belongs_to :user

      t.timestamps
    end
  end
end
