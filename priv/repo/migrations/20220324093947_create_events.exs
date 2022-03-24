defmodule Lifelog.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :namespace, :uuid
      add :when, :utc_datetime
      add :notes, :text

      timestamps()
    end
  end
end
