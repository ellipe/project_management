defmodule ProjectManagement.Repo.Migrations.CreateDocuments do
  use Ecto.Migration

  def change do
    create table(:documents) do

      add :name, :string
      add :content, :text
      add :view_count, :integer
      add :publish, :boolean, default: false

      add :project_id, references(:projects)

      timestamps()
    end
  end
end
