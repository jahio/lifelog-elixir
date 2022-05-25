defmodule :"Elixir.Lifelog.Repo.Migrations.Create-extension-pgStatStatements" do
  use Ecto.Migration

  def change do
    execute "CREATE EXTENSION IF NOT EXISTS pg_stat_statements", ""
  end
end
