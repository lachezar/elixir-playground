# Feature tests go through the Dynamo.under_test
# and are meant to test the full stack.
defmodule HomeTest do
  use Webdemo.TestCase
  use Dynamo.HTTP.Case

  test "returns OK" do
    conn = get("/")
    assert conn.status == 200
  end

  test "fib OK" do
    conn = get("/fib/12")
    assert conn.status == 200
    assert conn.sent_body == "The 12 Fibonacci number is 233"
  end
 
  test "fib ERR" do
    conn = get("/fib/notnumber21")
    assert conn.status == 400
    assert conn.sent_body == "\"notnumber21\" is not a number :("
  end
end
