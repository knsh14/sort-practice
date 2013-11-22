class SortLibrary
    def initialize(rand_list)
        @list = rand_list
    end
    def sorting
       #set each algorithms
       shaker_sort
    end

    def bubble_sort
        bs = @list
        0.upto(bs.size-1) do |i|
            (bs.size-1).downto(i) do |j|
                if bs[j] < bs[j-1] then
                    bs[j], bs[j-1] = bs[j-1], bs[j]
                end
            end
        end
        bs
    end

    def shaker_sort
        @list
    end
end
