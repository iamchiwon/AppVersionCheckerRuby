class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :app_key
      t.string :latest_version

      t.timestamps null: false
    end
  end
end
