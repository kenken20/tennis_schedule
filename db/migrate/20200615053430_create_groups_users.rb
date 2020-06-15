class CreateGroupsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_users do |t|
      t.bigint :group, foreign_key: true
      t.bigint :user, foreign_key: true
      t.timestamps
    end
  end
end
