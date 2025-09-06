=begin
    Notes

    For classes
    @variable  -> belongs to an instance
    @@variable -> belongs to the class

=end

class NameSorter
    def initialize()
        @item_list = []
        @item_count = 0
    end

    def to_string()
        puts @item_list.join("\n");
    end

    def sort()
        @item_list.sort! # added `!` to modify the array in place
    end

    def add_item(item)
        if item.is_a?(Array)
            item.each do |x|
                @item_list.push(x)
            end
        elsif item.is_a?(String)
            @item_list.push(item)
            @item_count += 1
        else
            raise Exception.new "NameSoter.add_item can only take an Array or String"
        end
    end
end


merger = NameSorter.new

list1 = ["Adam", "Sam", "Mike"]
list2 = ["Becky", "Chelsea", "Molly"]
list3 = ["Connor", "John", "Scott"]


merger.add_item(list1)
merger.add_item(list2)
merger.add_item(list3)
merger.add_item("Bill")
merger.add_item("Paul")

puts("Before sorting\n---------")
merger.to_string()

puts("\n")

puts("After sorting\n---------")

merger.sort()
merger.to_string()