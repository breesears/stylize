require 'generators/scss'

module Scss
  module Generators
    class NavGenerator < Base
      include Rails::Generators
      
      argument :f_name,        :type => :string,                      :banner => 'f_name'
 # argument :list_type,     :type => :string,                      :banner => 'list_type'
      argument :text,          :type => :array,                       :banner => 'text'
      
      def create_element
        append_file "app/views/#{file_name}.html.erb",  nav_items
      end    
      
      def file_name
        f_name.underscore
      end
        
      def nav_items
        str = "<ul class=\"navbar\">"
                      text.each do |t|
                        str << "&nbsp;&nbsp;<li class=\"navitem\">\n"
                        str << "<%= link_to '" 
                        str << t 
                        str << "'," 
                        text.shift
                        str << t 
                        str << "%>"
                        str << "&nbsp;&nbsp;</li>\n"
                      end
                       str << "</ul>"
                    
      end
     
    
      
     
    end
  end
end