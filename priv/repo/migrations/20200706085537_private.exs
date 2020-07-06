defmodule Bookmark.Repo.Migrations.Private do
  use Ecto.Migration

  def change do
    create table(:playlist_private) do
      add :title, :string, null: false, size: 30
      add :description, :string, null: false, size: 50
      add :url, :string, null: false
      add :playlist_id, references(:bookmark_playlist, on_delete: :delete_all), null: false,
      add :user_id, references(:bookmark_users, on_delete: :delete_all), null: false
    end
  end
end
