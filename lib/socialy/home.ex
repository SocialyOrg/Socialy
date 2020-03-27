defmodule Socialy.Router.Homepage do

  use Socialy.Server

  get do
    json(conn, %{ hello: :world })
  end

end

defmodule Socialy.API do

  use Socialy.Server

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Jason,
    parsers: [:urlencoded, :json, :multipart]

  mount Socialy.Router.Homepage

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end

end
