defmodule Money.Repo.Migrations.CreateMoneyTable do
  use Ecto.Migration

  def change do
    create table(:organizations) do
      add :name,            :string
      add :employee_count,  :integer
      add :payroll,         :money_with_currency
      add :tax,             :money_with_currency
      add :value,           :money_with_currency
      add :revenue,         :map
      timestamps()
    end
  end
end
