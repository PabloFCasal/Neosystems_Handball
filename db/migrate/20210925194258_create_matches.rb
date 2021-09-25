class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.string :local_team
      t.string :visiting_team
      t.integer :local_team_points
      t.integer :visiting_team_points
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
