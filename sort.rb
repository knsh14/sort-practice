class SortLibrary
    def initialize(rand_list)
        @list = rand_list
    end
    def sorting
       #set each algorithms
       insection_sort
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
        ss = @list
        count_j,count_k = 0,0
        0.upto(ss.size-1) do |i|
           (ss.size-1).downto(i) do |j|
                if ss[j] < ss[j-1] then
                    ss[j], ss[j-1] = ss[j-1], ss[j]
                end
                count_j = j
           end

           i.upto(ss.size-1-i) do |k|
                if ss[k] < ss[k-1] then
                    ss[k], ss[k-1] = ss[k-1], ss[k]
                end
                count_k = k
           end
           if count_j == count_k then
               break
           end
        end
        ss
    end

    def insection_sort
        is = @list
        1.upto(is.size-1) do |i|
            j = i
            while is[j-1] > is[j] and j > 0 do
                is[j],is[j-1] = is[j-1],is[j]
                j -= 1
            end
        end
        is
    end
end
