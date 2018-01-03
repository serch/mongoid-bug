class Parent
  include Mongoid::Document

  belongs_to :foo, class_name: ::Foo.name
end
