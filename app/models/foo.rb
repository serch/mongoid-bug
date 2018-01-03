class Foo
  include Mongoid::Document

  has_one :parent, class_name: ::Parent.name
end
