class ChangeMatchFields < ActiveRecord::Migration[6.1]
  def up
    rename_column :matches, :local_team, :local_team_id
    change_column :matches, :local_team_id, :integer

    rename_column :matches, :visiting_team, :visiting_team_id
    change_column :matches, :visiting_team_id, :integer
  end

  def down
    change_column :matches, :local_team_id, :string
    rename_column :matches, :local_team_id, :local_team

    change_column :matches, :visiting_team_id, :string
    rename_column :matches, :visiting_team_id, :visiting_team
  end
  
end
