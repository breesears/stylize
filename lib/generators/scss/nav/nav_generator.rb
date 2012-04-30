require 'generators/scss'

module Scss
  module Generators
    class NavGenerator < Base
      include Rails::Generators
      
      argument :f_name,        :type => :string,                      :banner => 'f_name'
      argument :text,          :type => :array,                       :banner => 'text'
      
      def create_element
        append_file "app/views/#{file_name}.html.erb",  list_items
      end    
      
      def file_name
        f_name.underscore
      end
        
      def nav_items
        str << "<ul class=\"navbar\">"
        text.each do |t|
          str << "<li class=\"navitem\">"
          str << "<%= link_to '" << t << "'," << t << "%>"
          str << "</li>\n"
        str << "</ul>"
        end
      end
     
    
      
     
    end
  end
end