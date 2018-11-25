#Try the following in IEX

alias IEx.Info

IO.inspect(['cat' | 'dog'])

# Why does IEx print 'cat' as a string, but 'dog' as indivual numbers?
[cat | dog] = ['cat' | 'dog']

IO.puts("Cat inspect:")
IO.inspect(cat)

IO.puts("Dog inspect:")
IO.inspect(dog)

IO.puts("Cat Info:")
IO.inspect(Info.info(cat))

IO.puts("Dog Info:")
IO.inspect(Info.info(dog))

IO.puts("==== Cat and dog info")
IO.inspect(Info.info(['cat' | 'dog']))

# We can check that `cat` is the head of list, so its a Char List.
# But when we use cons operator (`|`) we're joining both lists in same list.
# For instance:
IO.puts("---- Examples:")
IO.inspect(['cat' | 'dog'])
IO.inspect(['cat', 'dog'])

# In this case above we have a List with two elements, each one is a Char List,
# but when using cons operator, we're joining both, so 'cat' will be our head
# and 'dog' will be our tail, the remaining list, which prints as its corresponding
# character unicodes as a charlist is a list of Unicode codepoints and ASCII is a subset
# of Unicode.
