require 'generators/scss'

module Scss
  module Generators
    class NavGenerator < Base
      include Rails::Generators
      
      argument :links,  :type => :array, :banner => 'links'
      
      def create_element
        append_file "app/views/layouts/application.html.erb",  nav_items
      end    
      
        
      def nav_items
        str = "<ul class=\"navbar\">\n"
                      while links 
                        str << "  <li class=\"navitem\">"
                        str << "<%= link_to '" 
                        str << links.shift
                        str << "', " 
                        str << links.shift 
                        str << " %>"
                        str << "  </li> | \n"
                      end
        str << "</ul>"
                  
      end
     
    
      
     
    end
  end
end