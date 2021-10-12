class ChangePackagesIdTypeToUuid < ActiveRecord::Migration[6.1]
  def change
    add_column :packages, :uuid, :uuid, default: "gen_random_uuid()", null: false

    change_table :packages do |t|
      t.remove :id
      t.rename :uuid, :id
    end
    execute "ALTER TABLE packages ADD PRIMARY KEY (id);"
  end
end
