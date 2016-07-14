defmodule KvStoreTest do
  use ExUnit.Case
  doctest KvStore

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "1 + 1 is not 3" do
    assert 1 + 1 != 3
  end
end
