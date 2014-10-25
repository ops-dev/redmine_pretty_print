require 'redmine'

# This is the important line.
# It requires the file in lib/my_plugin/hooks.rb
require_dependency 'redmine_pretty_print'

Redmine::Plugin.register :redmine_pretty_print do
  name 'Redmine Pretty Print plugin'
  author 'Jimmy Yang'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/ops-dev/redmine_pretty_print'
  author_url 'http://example.com/about'
end
