class CreateGroupDates < ActiveRecord::Migration[5.2]
  def change
    create_table :group_dates do |t|
      t.references :contestant, foreign_key: true
      t.references :outing, foreign_key: true
    end
  end
end
