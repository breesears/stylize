require 'generators/scss'

module Scss
  module Generators
    class NavGenerator < Base
      include Rails::Generators
      
      argument :f_name,        :type => :string,                      :banner => 'f_name'
      argument :links,         :type => :array,                       :banner => 'text'
      
      def create_element
        append_file "app/views/#{file_name}.html.erb",  nav_items
      end    
      
      def file_name
        f_name.underscore
      end
        
      def nav_items
        str = "<ul class=\"navbar\">\n"
                      links.each do |l| 
                        str << "  <li class=\"navitem\">"
                        str << "<%= link_to '" 
                        str << links.shift
                        str << "', " 
                        str << links.shift 
                        str << " %>"
                        str << "  </li>\n"
                      end
                       str << "</ul>"
                    
      end
     
    
      
     
    end
  end
end