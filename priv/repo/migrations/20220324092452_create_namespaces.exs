defmodule Lifelog.Repo.Migrations.CreateNamespaces do
  use Ecto.Migration

  def change do
    create table(:namespaces, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :label, :text
      add :icon, :text
      add :desc, :text

      timestamps()
    end

    create index(:namespaces, [:label], unique: true)
  end
end
