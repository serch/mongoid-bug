class Child < Parent
  include Mongoid::Document

  belongs_to :bar, class_name: ::Bar.name
end
