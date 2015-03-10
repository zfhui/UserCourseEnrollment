class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.belongs_to :course, index: true
      t.belongs_to :user, index: true
    end
    add_foreign_key :enrollments, :courses
    add_foreign_key :enrollments, :users
  end
end
