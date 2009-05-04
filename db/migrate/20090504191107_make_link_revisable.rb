class MakeLinkRevisable < ActiveRecord::Migration
  def self.up
        add_column :links, :revisable_original_id, :integer
        add_column :links, :revisable_branched_from_id, :integer
        add_column :links, :revisable_number, :integer
        add_column :links, :revisable_name, :string
        add_column :links, :revisable_type, :string
        add_column :links, :revisable_current_at, :datetime
        add_column :links, :revisable_revised_at, :datetime
        add_column :links, :revisable_deleted_at, :datetime
        add_column :links, :revisable_is_current, :boolean
      end

  def self.down
        remove_column :links, :revisable_original_id
        remove_column :links, :revisable_branched_from_id
        remove_column :links, :revisable_number
        remove_column :links, :revisable_name
        remove_column :links, :revisable_type
        remove_column :links, :revisable_current_at
        remove_column :links, :revisable_revised_at
        remove_column :links, :revisable_deleted_at
        remove_column :links, :revisable_is_current
      end
end
