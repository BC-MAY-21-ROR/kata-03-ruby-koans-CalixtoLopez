require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutArrays < Neo::Koan
  def test_creating_arrays
    empty_array = Array.new
    assert __, empty_array.class
    assert __, empty_array.size
  end

  def test_array_literals
    array = Array.new
    assert_equal [], array

    array[0] = 1
    assert_equal [1], array

    array[1] = 2
    assert [1, __], array

    array << 333
    assert __, array
  end

  def test_accessing_array_elements
    array = [:peanut, :butter, :and, :jelly]

    assert __, array[0]
    assert __, array.first
    assert __, array[3]
    assert __, array.last
    assert __, array[-1]
    assert __, array[-3]
  end

  def test_slicing_arrays
    array = [:peanut, :butter, :and, :jelly]

    assert __, array[0,1]
    assert __, array[0,2]
    assert __, array[2,2]
    assert __, array[2,20]
    assert __, array[4,0]
    assert __, array[4,100]
    assert __, array[5,0]
  end

  def test_arrays_and_ranges
    assert __, (1..5).class
    assert_not_equal [1,2,3,4,5], (1..5)
    assert __, (1..5).to_a
    assert __, (1...5).to_a
  end

  def test_slicing_with_ranges
    array = [:peanut, :butter, :and, :jelly]

    assert __, array[0..2]
    assert __, array[0...2]
    assert __, array[2..-1]
  end

  def test_pushing_and_popping_arrays
    array = [1,2]
    array.push(:last)

    assert __, array

    popped_value = array.pop
    assert __, popped_value
    assert __, array
  end

  def test_shifting_arrays
    array = [1,2]
    array.unshift(:first)

    assert __, array

    shifted_value = array.shift
    assert __, shifted_value
    assert __, array
  end

end
