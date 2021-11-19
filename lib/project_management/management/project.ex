defmodule ProjectManagement.Management.Project do
  use Ecto.Schema
  import Ecto.Changeset

  alias ProjectManagement.Management.Document

  schema "projects" do
    field :description, :string
    field :title, :string

    has_many :document, Document

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end
