class SortedList:
    
    def __init__(self):
        self.list = []
    
    def __str__(self):
        result = ""
        for s in self.list:
            result += s + "\n"
        return result
    
    def add_list(self, names):
        for s in names:
            self.list.append(s)
        self.list.sort()

if __name__ == "__main__":
    list1 = ["Adam", "Sam", "Mike"]
    list2 = ["Becky", "Chelsea", "Molly"]
    list3 = ["Connor", "John", "Scott"]

    sorted_list = SortedList()
    sorted_list.add_list(list1)
    print("After first add:")
    print(sorted_list)

    sorted_list.add_list(list2)
    print("After second add:")
    print(sorted_list)

    sorted_list.add_list(list3)
    print("After third add:")
    print(sorted_list)

