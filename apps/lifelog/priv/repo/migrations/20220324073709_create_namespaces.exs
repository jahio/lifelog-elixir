defmodule LifeLog.Repo.Migrations.CreateNamespaces do
  use Ecto.Migration

  def change do
    create table(:namespaces) do
      add :label, :string
      add :icon, :string
      add :desc, :text

      timestamps()
    end

    create index("namespaces", [:label], unique: true)
  end
end
