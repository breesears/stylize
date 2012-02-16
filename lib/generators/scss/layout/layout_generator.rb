require 'generators/scss'

module Scss
  module Generators
    class LayoutGenerator < Base
      argument :layout_name, :type => :string, :default => 'application', :banner => 'layout_name'

      def create_layout
        template 'layout.html.erb', "app/views/layouts/application.html.erb"
        copy_file '#{file_name}.css', "public/stylesheets/#{file_name}.css"
        copy_file 'layout_helper.rb', 'app/helpers/layout_helper.rb'
      end

      private

      def file_name
        layout_name.underscore
      end
    end
  end
end
