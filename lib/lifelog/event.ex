defmodule Lifelog.Event do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "events" do
    field :namespace, Ecto.UUID
    field :notes, :string
    field :when, :utc_datetime

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:namespace, :when, :notes])
    |> validate_required([:namespace, :when, :notes])
  end
end
