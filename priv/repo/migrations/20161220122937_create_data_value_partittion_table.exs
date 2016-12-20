defmodule EctoProblem.Repo.Migrations.CreateDataValuePartittionTable do
  use Ecto.Migration

  def change do
    create table(:data_value_partition, oids: false) do
      add :data_integer, :integer
      add :data_float, :float
      add :data_type, :integer
    end
  end
end
