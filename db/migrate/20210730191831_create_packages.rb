class CreatePackages < ActiveRecord::Migration[6.1]
  def change
    create_table :packages do |t|
      t.belongs_to :courier, index: true, foreign_key: true
      t.string :tracking_number
      t.boolean :delivery_status, default: false
      t.timestamps
    end
  end
end
