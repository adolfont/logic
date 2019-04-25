defmodule LogicTest do
  use ExUnit.Case
  import Kernel, except: [and: 2]
  import Logic

  test "tests for my_and" do
    assert my_and(true, true) == true
    assert my_and(false, true) == false
    assert my_and(false, false) == false
    assert my_and(true, false) == false
    assert my_and(false, 1) == :error
  end

  test "test for logical and macro" do
    assert lalalaland(true, true) == true
  end

  test "tests for logical and operator" do
    assert (true and true) == true
    assert (true and false) == false
    assert (false and true) == false
    assert (false and false) == false
    assert (true and 1) == :error
    assert (1 and true) == :error
  end
end
