defmodule Lifelog.Event do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "events" do
    # field :namespace, Ecto.UUID
    belongs_to :namespace, Lifelog.Namespace
    field :notes, :string
    field :when, :utc_datetime
    field :label, :string

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:namespace, :when, :notes, :label])
    |> validate_required([:when, :label])
  end
end
