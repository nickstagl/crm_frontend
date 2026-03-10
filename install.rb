<% User.find_by({ "id" => session["user_id"] }) != nil %>
  <p><a href="/companies/<%= @company["id"] %>/edit">Edit Company</a></p>

  <form action="/companies/<%= @company["id"] %>" method="post">
    <input type="hidden" name="_method" value="delete">
    <button>Delete Company</button>
  </form>
<% end %>