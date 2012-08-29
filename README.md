# Jader Demo

This is a simple Rails application that demonstrates the basic use of Jader and Spine.js to create an SEO-friendly
single-page application.

## Basic concepts

Spine.js is a client-side MVC framework that helps you write great single-page applications in the browser. Since
single-page Web applications store all views as Javascript files, they are inherently SEO-unfriendly, since they require
a real browser to render the HTML.

This is where Jader comes in.

Jader lets you write JST-based views that can be rendered on the server, along with the normal browser-based rendering.
When you request a page for the first time, Jader will look for your Jade template and render it as a Rails view. Once the page
is loaded, your application will operate normally in "single-page" modes, and subsequent requests to the server will only return
the JSON data required to render various parts of your application.

From a search engine's perspective, this is ideal, as any non XHR (and non JSON) request to the server will render the entire page,
making your application visible to the search engine.

## Points of interest

The demo is a pretty simple Rails application, with Mongoid powered models.

You should look more closely at:

* `app/controllers/posts_controller.rb` - Note the difference response to html and json requests
* `app/assets/javascripts/app/controllers/application_controller.js.coffee`
  * Note the logic of determining whether Spine should or shouldn't render a view based on first page load
  * Note the dynamic injection of the server-rendered part into Spine's active stack view element
* `config/initializers/jader.rb` - Jader's configuration