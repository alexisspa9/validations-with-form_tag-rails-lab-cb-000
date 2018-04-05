<h2>Create an Author</h2>
<%= form_tag authors_path, method: "post" do %>
  <% if @author.errors.any? %>
    <div id="error_explanation">
      <h3>There were some errors:</h3>
      <ul>
        <% @author.errors.full_messages.each do |message| %>
          <li><%= message %></li>
        <% end %>
      </ul>
    </div>
  <% end %>

  <% if @author.errors[:name].empty? %>
    <div class="field">
  <% else %>
    <div class="field_with_errors">
  <% end %>
    <%= label_tag "name", "Name" %>
    <%= text_field_tag "name", @author.name %>
  </div>

  <% if @author.errors[:email].empty? %>
    <div class="field">
  <% else %>
    <div class="field_with_errors">
  <% end %>
    <%= label_tag "email", "Email" %>
    <%= text_field_tag "email", @author.email %>
  </div>

  <% if @author.errors[:phone_number].empty? %>
    <div class="field">
  <% else %>
    <div class="field_with_errors">
  <% end %>
    <%= label_tag "phone_number", "Phone Number" %>
    <%= text_field_tag "phone_number", @author.phone_number %>
  </div>

  <%= submit_tag "Create" %>
<% end %>