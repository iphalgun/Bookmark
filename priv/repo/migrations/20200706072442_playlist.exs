defmodule Bookmark.Repo.Migrations.Playlist do
  use Ecto.Migration

  def change do
    create table(:bookmark_playlist) do
      add :title, :string, null: false, size: 30
      add :time, :utc_datetime, null: false
      add :playlist_id, references(:bookmark_users, on_delete: :delete_all), null: false,
      add :user_id, references(:bookmark_users, on_delete: :delete_all), null: false
    end
  end
end
