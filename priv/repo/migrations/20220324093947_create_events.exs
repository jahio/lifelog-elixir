defmodule Lifelog.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :namespace_id, references(:namespaces, on_delete: :nilify_all, type: :uuid)
      add :when, :utc_datetime
      add :notes, :text
      add :label, :text

      timestamps()
    end

    create index(:events, [:when])
    create index(:events, [:label])
  end
end
