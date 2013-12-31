ActiveRecord::Schema.define(:version => 1) do

  drop_table(:users)    rescue nil
  drop_table(:topics)   rescue nil
  drop_table(:comments) rescue nil

  create_table(:users) do |t|
    t.string   :name,    :null => false
  end

  create_table(:topics) do |t|
    t.string   :title,   :null => false
  end

  create_table(:comments) do |t|
    t.string   :body,     :null => false
    t.integer  :topic_id, :null => false
    t.integer  :user_id,  :null => false
    t.timestamps
  end

end
