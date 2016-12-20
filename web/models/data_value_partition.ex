defmodule EctoProblem.DataValuePartition do
  alias EctoProblem.{Repo, DataValuePartition}
  use EctoProblem.Web, :model
  require IEx

  schema "data_value_partition" do
    field :data_integer, :integer
    field :data_float, :float
    # 0 => Integer, 1 => Float, 2 => Null / Undefined
    field :data_type, :integer
  end

  @allowed_fields ~w(data_type data_integer data_float)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @allowed_fields)
    |> validate_required([:data_type])
  end

  def data_changeset(data) when is_integer(data) do
    %{
      data_type: 0,
      data_integer: data
    }
  end
  def data_changeset(data) when is_float(data) do
    %{
      data_type: 1,
      data_float: data
    }
  end
  def data_changeset(_data) do
    %{
      data_type: 2,
    }
  end
end