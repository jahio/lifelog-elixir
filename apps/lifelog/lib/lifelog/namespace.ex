defmodule LifeLog.Namespace do
  use Ecto.Schema
  import Ecto.Changeset

  schema "namespaces" do
    field :desc, :string
    field :icon, :string
    field :label, :string

    timestamps()
  end

  @doc false
  def changeset(namespace, attrs) do
    namespace
    |> cast(attrs, [:label, :icon, :desc])
    |> validate_required([:label, :icon, :desc])
  end
end
