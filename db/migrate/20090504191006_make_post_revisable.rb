class MakePostRevisable < ActiveRecord::Migration
  def self.up
        add_column :posts, :revisable_original_id, :integer
        add_column :posts, :revisable_branched_from_id, :integer
        add_column :posts, :revisable_number, :integer
        add_column :posts, :revisable_name, :string
        add_column :posts, :revisable_type, :string
        add_column :posts, :revisable_current_at, :datetime
        add_column :posts, :revisable_revised_at, :datetime
        add_column :posts, :revisable_deleted_at, :datetime
        add_column :posts, :revisable_is_current, :boolean
      end

  def self.down
        remove_column :posts, :revisable_original_id
        remove_column :posts, :revisable_branched_from_id
        remove_column :posts, :revisable_number
        remove_column :posts, :revisable_name
        remove_column :posts, :revisable_type
        remove_column :posts, :revisable_current_at
        remove_column :posts, :revisable_revised_at
        remove_column :posts, :revisable_deleted_at
        remove_column :posts, :revisable_is_current
      end
end
