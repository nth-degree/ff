# encoding: UTF-8
ActiveRecord::Schema.define(version: 20160321033537) do
  create_table "reports", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
end
