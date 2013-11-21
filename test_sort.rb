require 'test/unit'
require './sort.rb'

class TestCase_Sort < Test::Unit::TestCase
    def setup
        @nbr_arry = [*1..20]
        @rand_nbr_arry = @nbr_arry.sort_by{rand}
        @sort_obj = SortLibrary.new(@rand_nbr_arry)
    end
    
    def test_sorting
        assert_equal(@nbr_arry,@sort_obj.sorting) 
    end
end
