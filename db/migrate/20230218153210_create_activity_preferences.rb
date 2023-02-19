class CreateActivityPreferences < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_preferences do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :preference, null: false, foreign_key: true

      t.timestamps
    end
  end
end
