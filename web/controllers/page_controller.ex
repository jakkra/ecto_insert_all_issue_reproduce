defmodule EctoProblem.PageController do
  use EctoProblem.Web, :controller

  alias EctoProblem.{DataValuePartition}

  plug :scrub_params, "page" when action in [:create, :update]


  # insert_all has a limit on the amount of data to insert
  # Float.floor(65_535 / 2) |> round
  @max_parameters 32767
  
  def index(conn, _params) do
    IO.inspect "Index start"
    Enum.map(1..200000, fn x -> DataValuePartition.data_changeset(x) end)
    |> Enum.chunk(@max_parameters, @max_parameters, [])
    |> Enum.each(fn chunk ->
      IO.inspect "Insert a chunk"
      Repo.insert_all("data_value_partition", chunk)
    end)
    IO.inspect "Index after insert"

    render conn, "index.html"
  end
end


# [%{data_float: -48.14, data_type: 1},
#  %{data_float: -48.09, data_type: 1},
#  %{data_float: -48.07, data_type: 1},
#  %{data_float: -48.14, data_type: 1},
#  %{data_float: -48.34, data_type: 1},
#  %{data_float: -48.29, data_type: 1},
#  %{data_float: -48.32, data_type: 1},
#  %{data_float: -48.31, data_type: 1},
#  %{data_float: -48.39, data_type: 1}]