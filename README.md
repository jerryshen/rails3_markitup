Markitup! For Rails3
--------------------

Markitup_rails is a Rails 3.1 engine that allows you to integrate the {MarkItUp}[http://markitup.jaysalvat.com/home/] text editor into the asset pipeline.

This uses the 1.1.12 release of Markitup, by {Jay Salvat}[http://jaysalvat.com]

This engine allows you to add in the CSS and Javascript as written in the MarkItUp plugin. I would strongly recommend that you read the documentation tha comes with MarkItUp.

This engine includes the following MarkItUp elements:

* MarkItUp images and stylesheets
* MarkItUp javascript
* a MarkItUp set for Markdown 

MarkItUp support a variety of markup parsers, however, this plugin only includes support for Markdown and HTML.
Pull requests are welcome!

= Usage

Add the markitup_rails gem to your Gemfile.  In Gemfile:

    gem "markitup_rails"
    
Basically include <%= include_markitup_if_needed %> under the <head> element of your in your layout file:

    <%= include_markitup_if_needed %>

In your controller, use include_markitup method to load markitup javascripts and stylesheets:

    include_markitup

Assign your textarea with id

    :classs => "markitup_html"