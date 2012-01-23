module Rails3Markitup
  module Helper
    def include_markitup_if_needed(*sources)
      if @use_markitup
        options = sources.extract_options!.stringify_keys
        cache  = options.delete("cache").to_s
        cache_name = (cache == "true" ? "markitup-cache" : "markitup-#{cache}")
        output = ""
        output << stylesheet_link_tag("/assets/skins/markitup/style.css", "/assets/sets/default/style.css") << "\n"
        if config.perform_caching && !cache.empty?
          output << javascript_include_tag("/assets/jquery.markitup.js",  "/assets/sets/default/set.js", "/assets/jquery.markitup.config.js", :cache => "markitup/#{cache_name}")
        else
          output << javascript_include_tag("/assets/jquery.markitup.js",  "/assets/sets/default/set.js", "/assets/jquery.markitup.config.js")
        end
        output.html_safe
      end
    end
  end
end

ActionView::Base.send(:include, Rails3Markitup::Helper)