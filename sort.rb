class SortLibrary
    def initialize(rand_list)
        @list = rand_list
    end
    def sorting
       #set each algorithms
       shaker_sort
    end

    def bubble_sort
        0.upto(@list.size-1) do |i|
            (@list.size-1).downto(i) do |j|
                if @list[j] < @list[j-1] then
                    @list[j], @list[j-1] = @list[j-1], @list[j]
                end
            end
        end
        @list
    end

    def shaker_sort
        @list
    end
end
