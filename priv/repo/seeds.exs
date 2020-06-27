# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Progfunc.Repo.insert!(%Progfunc.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


alias Progfunc.Accounts

for n <- 0..999, do: Accounts.create_user(%{name: "Test User", email: "test@user.com"})