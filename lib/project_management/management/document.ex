defmodule ProjectManagement.Management.Document do
  use Ecto.Schema
  import Ecto.Changeset

  alias ProjectManagement.Management.Project

  schema "documents" do
    field :name, :string
    field :content, :string
    field :view_count, :integer
    field :publish, :boolean

    belongs_to :project, Project

    timestamps()
  end

  @doc false
  def changeset(document, attrs) do
    document
    |> cast(attrs, [:name, :content, :view_count, :publish, :project_id])
    |> validate_required([:name, :content, :view_count, :publish, :project_id])
  end
end
