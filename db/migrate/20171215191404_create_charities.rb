class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :title
      t.string :info
      t.string :charityInfo
      t.string :linkTitle
      t.string :theLink

      t.timestamps
    end
  end
end
