class Task < ActiveRecord::Base

  paginates_per 5

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :description, :deadline, :presence => true;

  before_validation(:on => :create) do
    self.completed = 0 if not self.completed
  end

  def self.search(search_term, page)
    return Task.order(:name).page(page) if search_term.blank?
    name, description = "%#{search_term.downcase}%", "%#{search_term.downcase}%"
    Task.where('(lower(name) like ?) or (lower(description) like ?)',
                  name, description).order(:name, :description).page(page)
  end
end
