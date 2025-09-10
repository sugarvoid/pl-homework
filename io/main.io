# Helper function for newlines
newline := method("" println)

SortedList := Object clone
SortedList items := List clone

SortedList toString := method(
    items foreach(i, writeln(i))
)

SortedList addList := method(names,
    names foreach(n, items append(n))

    # Replace the items list with a sorted version
    items = items sort
)

list1 := list("Adam", "Sam", "Mike")
list2 := list("Becky", "Chelsea", "Molly")
list3 := list("Connor", "John", "Scott")

SortedList addList(list1)
"After first add:" println
SortedList toString
newline

SortedList addList(list2)
"After second add:" println
SortedList toString
newline

SortedList addList(list3)
"After third add:" println
SortedList toString
newline
