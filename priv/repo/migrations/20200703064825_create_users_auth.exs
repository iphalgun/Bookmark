defmodule Bookmark.Repo.Migrations.CreateUsersAuth do
  use Ecto.Migration

  def change do
    create table(:bookmark_users_auth) do
      add :login_at, :utc_datetime, null: false
      add :logout_at, :utc_datetime
      add :user_id, references(:bookmark_users, on_delete: :delete_all), null: false
    end
  end
end
