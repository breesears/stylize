require 'generators/scss'

module Scss
  module Generators
    class LayoutGenerator < Base
      argument :layout_name, :type => :string, :default => 'application', :banner => 'layout_name'
      #argument :c_name,  :type => :string, :banner => 'c_name'

      def create_layout
        template 'layout.html.erb', "app/views/layouts/application.html.erb"
        copy_file "#{file_name}/#{color_name}.css", "public/stylesheets/#{file_name}/#{color_name}.css"
        copy_file 'layout_helper.rb', 'app/helpers/layout_helper.rb'
        copy_file "#{file_name}/#{color_name}_bg.gif", "public/images/#{file_name}/#{color_name}_bg.gif"
      end

      private

      def file_name
        layout_name.underscore
      end
      
  #    def color_name
   #     c_name.underscore
    #  end
    end
  end
end
