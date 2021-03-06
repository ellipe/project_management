defmodule ProjectManagement.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :title, :string
      add :description, :text

      timestamps()
    end

    create unique_index("projects", [:title])
  end
end
