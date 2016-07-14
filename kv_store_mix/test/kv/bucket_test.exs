defmodule KV.BucketTest do
  use ExUnit.Case, async: true

  test "stores value by key" do
    {:ok, bucket} = KV.Bucket.start_link
    assert KV.Bucket.get(bucket, "milk") == nil
  end
end
