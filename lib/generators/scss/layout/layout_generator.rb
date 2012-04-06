require 'generators/scss'

module Scss
  module Generators
    class LayoutGenerator < Base
      argument :layout_name, :type => :string, :default => 'application', :banner => 'layout_name'
  

      def create_layout
        template 'layout.html.erb', "app/views/layouts/application.html.erb"
           # copy_file  'jquery/jquery.datePicker.js', "public/script"
         copy_file "#{file_name}/#{file_name}.css", "public/stylesheets/#{file_name}/#{file_name}.css"
         copy_file 'layout_helper.rb', 'app/helpers/layout_helper.rb'
         copy_file "#{file_name}/#{file_name}_bg.gif", "public/images/#{file_name}/#{file_name}_bg.gif"
      end

      private

      def file_name
        layout_name.underscore
      end
    end
  end
end
