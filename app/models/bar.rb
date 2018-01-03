class Bar
  include Mongoid::Document

  has_one :child, class_name: ::Child.name
end
