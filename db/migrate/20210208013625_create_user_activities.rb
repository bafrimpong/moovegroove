class CreateUserActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :user_activities do |t|
      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.date :log_date
      t.time :duration
      t.text :log_comment

      t.timestamps
    end
  end
end
