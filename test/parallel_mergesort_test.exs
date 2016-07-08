defmodule ParallelMergesortTest do
  use ExUnit.Case
  doctest ParallelMergesort

  test "the truth" do
    assert 1 + 1 == 2
  end

  
  test "it merges the lists" do
    assert ParallelMergesort.merge([1, 3, 5, 7], [2, 4, 6, 8, 10]) == [1, 2, 3, 4, 5, 6, 7, 8, 10]
    assert ParallelMergesort.merge([2, 4, 6, 8, 10], [1, 3, 5, 6, 7]) == [1, 2, 3, 4, 5, 6, 6, 7, 8, 10]
  end

  test "it splits the lists" do
    assert ParallelMergesort.split([1, 2, 3, 4, 5, 6, 7, 8]) == [[7, 5, 3, 1], [8, 6, 4, 2]]
  end

  test "it sorts the list" do
    assert ParallelMergesort.sort([1, 3, 2, 6, 3, 4]) == [1, 2, 3, 3, 4, 6]
  end

  test "it sorts the list in parralel" do
    assert ParallelMergesort.parrallel_sort([1, 3, 2, 6, 3, 4]) == [1, 2, 3, 3, 4, 6]
  end




end
