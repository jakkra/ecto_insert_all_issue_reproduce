# EctoProblem

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

It works well in dev/prod but when you make a release by setting MIX_ENV=prod and PORT=80 and running 

 * `mix compile`
 * `mix phoenix.digest`
 * `mix release`
 * `cd rel/ecto_problem/bin`
 * `ecto_problem console`
 * `visit localhost:80`
 
 Now you can see that it very slow.


## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
