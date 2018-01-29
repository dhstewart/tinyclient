defmodule TinyClient do
  @moduledoc """
  Just practicing transcoding Erlang to Elixir
  """
  def send_request(request) do
    net_host = "localhost",
    {ok, sock} = :gen_tcp.connect(net_host, 4000, [:binary, packet: :raw, active: false ])
    :ok = :gen_tcp.send(sock, "Some Data")
    {:ok, response} = :gen_tcp.recv(socket, 0)
    :ok = :gen_tcp.close(sock)
  end
end
