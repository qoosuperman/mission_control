class Mission < ApplicationRecord
  belongs_to :user

  enum priority: { urgent: 0, common: 1 ,low: 2}
  enum category: { company: 0, home: 1}
end
