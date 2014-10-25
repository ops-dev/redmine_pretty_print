Rails.configuration.to_prepare do
  require_dependency 'redmine_pretty_print/hooks/add_pretty'
#  require_dependency 'pretty_print_helper_patch'
#  unless Redmine::WikiFormatting::Textile::Helper.included_modules.include? WikiExtensionsHelperPatch
#    Redmine::WikiFormatting::Textile::Helper.send(:include, WikiExtensionsHelperPatch)
#  end
end
