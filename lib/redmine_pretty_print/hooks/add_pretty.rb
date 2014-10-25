module RedminePrettyPrint
  module Hooks
    class AddPretty < Redmine::Hook::ViewListener

      def view_layouts_base_html_head(context = {})
        header = []
        header << javascript_include_tag("https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js")
        header << stylesheet_link_tag("http://jmblog.github.com/color-themes-for-google-code-prettify/css/themes/github.css")
        header.join(" ")
      end

    end
  end
end
