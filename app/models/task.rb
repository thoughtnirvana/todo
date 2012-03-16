class Task < ActiveRecord::Base

  paginates_per 5

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :description, :deadline, :presence => true;

  before_validation(:on => :create) do
    self.completed = 0 if not self.completed
  end
end
