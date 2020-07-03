defmodule Bookmark.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def up do
    create table("bookmark_users") do
      add :name, :string, null: false, size: 30
      add :email, :string, null: false
      add :password, :string, null: false, size: 10
      add :password_confirmation, :string, null: false, size: 10
      add :contact, :integer
      add :image_url, :string
      timestamps(type: :utc_datetime)
    end
    create index(:bookmark_users, [:name])
    create index(:bookmark_users, [:email])
    create unique_index(:bookmark_users, [:name, :email])
  end

  def down do
    drop index(:bookmark_users, [:name])
    drop index(:bookmark_users, [:email])
    drop unique_index(:bookmark_users, [:name, :email])
    drop table(:bookmark_users)
  end
end
