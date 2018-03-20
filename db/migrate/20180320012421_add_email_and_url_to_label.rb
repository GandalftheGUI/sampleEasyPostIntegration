class AddEmailAndUrlToLabel < ActiveRecord::Migration[5.1]
  def change
    add_column :labels, :email, :string
    add_column :labels, :label_url, :text
    add_column :labels, :cost, :float
  end
end
