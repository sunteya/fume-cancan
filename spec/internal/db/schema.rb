ActiveRecord::Schema.define do
  create_table(:topics, force: true) do |t|
    t.string  :title
    t.boolean :online, default: false
  end
end
