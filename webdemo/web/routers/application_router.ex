defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])
  end

  # It is common to break your Dynamo into many
  # routers, forwarding the requests between them:
  # forward "/posts", to: PostsRouter

  get "/" do
    conn = conn.assign(:title, "Welcome to Dynamo!")
    render conn, "index.html"
  end

  get "/fib/:n" do
    n = to_integer(conn.params[:n])
    case n do
      :error -> conn.resp 400, "\"#{conn.params[:n]}\" is not a number :("
      _ ->  
        fibn = Fib.fib(n)
        conn.resp 200, "The #{n} Fibonacci number is #{fibn}"
    end
  end

  defp to_integer(n) do
    {result, _} = :string.to_integer(bitstring_to_list(n))
    result
  end
end
