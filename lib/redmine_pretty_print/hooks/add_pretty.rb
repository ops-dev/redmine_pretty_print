module RedminePrettyPrint
  module Hooks
    class AddPretty < Redmine::Hook::ViewListener

      def view_layouts_base_html_head(context = {})
        header = []
        header << stylesheet_link_tag(:hemisu_light, :plugin => "redmine_pretty_print")
        #header << javascript_include_tag("https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js")
        header << javascript_include_tag(:run_prettify, :plugin => "redmine_pretty_print")
        #header << stylesheet_link_tag("http://jmblog.github.com/color-themes-for-google-code-prettify/css/themes/github.css")
        header.join(" ")
      end

    end
  end
end
