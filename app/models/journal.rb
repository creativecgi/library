class Journal < ApplicationRecord
  belongs_to :publisher
  belongs_to :subject
  validates_presence_of :title
  validates_presence_of :issn
end
