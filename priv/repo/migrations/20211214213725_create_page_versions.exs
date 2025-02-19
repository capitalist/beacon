defmodule Beacon.Repo.Migrations.CreatePageVersions do
  use Ecto.Migration

  def change do
    create table(:page_versions, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :version, :integer
      add :template, :text
      add :page_id, references(:pages, on_delete: :delete_all, type: :binary_id)

      timestamps()
    end

    create index(:page_versions, [:page_id])
  end
end
