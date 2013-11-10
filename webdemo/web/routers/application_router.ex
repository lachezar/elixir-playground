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
    #c("../fib/lib/fib.ex")
    {n, _} = :string.to_integer(bitstring_to_list(conn.params[:n]))
    fibn = Fib.fib(n)
    conn.resp 200, "The #{n} Fibonacci number is #{fibn}"
  end
end
