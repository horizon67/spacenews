class CreatePostComments < ActiveRecord::Migration[5.1]
  def change
    create_table :post_comments do |t|
      t.references :post
      t.text :message

      t.timestamps
    end
  end
end
