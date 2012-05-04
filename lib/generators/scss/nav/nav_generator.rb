require 'generators/scss'

module Scss
  module Generators
    class NavGenerator < Base
      include Rails::Generators
      
      argument :f_name,        :type => :string,                      :banner => 'f_name'
 # argument :list_type,     :type => :string,                      :banner => 'list_type'
      argument :text,          :type => :hash,                       :banner => 'text'
      
      def create_element
        append_file "app/views/#{file_name}.html.erb",  nav_items
      end    
      
      def file_name
        f_name.underscore
      end
        
      def nav_items
        str = "<ul class=\"navbar\">"
                      text.each do |k, v| 
                        str << "  <li class=\"navitem\">\n"
                        str << "<%= link_to '" 
                        str << k 
                        str << "'," 
                        str << v 
                        str << "%>"
                        str << "  </li>\n"
                      end
                       str << "</ul>"
                    
      end
     
    
      
     
    end
  end
end