require_dependency "redmine/wiki_formatting/textile/helper"

module WikiExtensionsHelperPatch
  def self.included(base) # :nodoc:
    base.send(:include, HelperMethodsWikiExtensions)


    base.class_eval do
      unloadable # Send unloadable so it will not be unloaded in development    
      alias_method_chain :heads_for_wiki_formatter, :wiki_smiles
    end
  end

end

module HelperMethodsWikiExtensions
  def heads_for_wiki_formatter_with_wiki_smiles
    heads_for_wiki_formatter_without_wiki_smiles
    return if ie6_or_ie7?
    unless @heads_for_wiki_smiles_included
      baseurl = Redmine::Utils.relative_url_root
      imageurl = baseurl + "/plugin_assets/redmine_pretty_print/images"
      content_for :header_tags do
        o = stylesheet_link_tag("code.css", :plugin => "redmine_pretty_print")
        o << javascript_include_tag("code.js", :plugin => "redmine_pretty_print")
        o.html_safe
      end
      @heads_for_wiki_smiles_included = true
    end
  end

  private
  def ie6_or_ie7?
    useragent = request.env['HTTP_USER_AGENT'].to_s
    return useragent.match(/IE[ ]+[67]./) != nil
  end
end
