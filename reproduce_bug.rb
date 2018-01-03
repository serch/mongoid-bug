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
Child.scoped.includes(:foo, :bar).first
