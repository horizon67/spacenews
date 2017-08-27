class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :source_name
      t.string :source_url
      t.datetime :published_at

      t.timestamps
    end
  end
end
