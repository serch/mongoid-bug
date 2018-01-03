Foo.delete_all
Bar.delete_all
Parent.delete_all

foo = Foo.new
foo.save

bar = Bar.new
bar.save

child = Child.new
child.foo = foo
child.bar = bar
child.save

# works
Child.scoped.includes(:foo).first
# works
Child.scoped.includes(:bar).first
# fails
# NoMethodError: undefined method `bar_id' for #<Foo _id: 5a4d08f2dea60e7f5fae02aa, >
Child.scoped.includes(:foo, :bar).first

# similar bug https://jira.mongodb.org/browse/MONGOID-4297
