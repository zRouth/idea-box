class Idea < ActiveRecord::Base
  validates :title, :body, presence: true
  validates :quality, inclusion: { in: %w(plausible swill genius)}
end
