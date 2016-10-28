class CreateProjects < ActiveRecord::Migration
  def change
    create_table "projects", force: :cascade do |t|
    t.string  "name",        limit: 255
    t.string  "cause",       limit: 255
    t.text    "description"
    # geography: urban, rural, any
    t.text    "geography"
    # volunteers: 1-4, 5-14, 15+, Any
    t.text    "volunteers"
    # budget: $0, $1-$49,$50-$99,$100-$249,$250+
    t.text    "budget"
    # diffulty: easy, medium hard
    t.text    "difficulty"
    end


  end
end
