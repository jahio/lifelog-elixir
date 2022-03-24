defmodule Lifelog.Namespace do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "namespaces" do
    has_many :events, Lifelog.Event
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
