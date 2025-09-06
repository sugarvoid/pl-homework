class NameSorter:
    
    def __init__(self):
        self.list = []
    
    def __str__(self):
        result = ""
        for s in self.list:
            result += s + "\n"
        return result
    
    def sort(self):
        self.list.sort()
    
    def add(self, names):
        for s in names:
            self.list.append(s)

if __name__ == "__main__":
    merger = NameSorter()
    list1 = ["Adam", "Sam", "Mike"]
    list2 = ["Becky", "Chelsea", "Molly"]
    list3 = ["Connor", "John", "Scott"]

    merger.add(list1)
    merger.add(list2)
    merger.add(list3)
        
    print("List after import:")
    print(merger)
    merger.sort()
    print("List after sort:")
    print(merger)

