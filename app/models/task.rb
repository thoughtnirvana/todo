class Task < ActiveRecord::Base
  validates :name, :description, :deadline, :presence => true;

  before_validation(:on => :create) do
    self.completed = 0 if not self.completed
  end
end
