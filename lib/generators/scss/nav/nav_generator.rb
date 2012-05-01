require 'generators/scss'

module Scss
  module Generators
    class NavGenerator < Base
      include Rails::Generators
      
      argument :f_name,        :type => :string,                      :banner => 'f_name'
 argument :list_type,     :type => :string,                      :banner => 'list_type'
      argument :text,          :type => :array,                       :banner => 'text'
      
      def create_element
        append_file "app/views/#{file_name}.html.erb",  nav_items
      end    
      
      def file_name
        f_name.underscore
      end
        
      def nav_items
        
          str = "<ol>\n"
       
         
        
        text.each do |t|
          str << "<li>" 
          str << t 
          str << "</li>\n"
        end
        
        if (list_type == 'o')  
          str << "</ol>\n"
        end
        # str = "<ul class=\"navbar\">"
        #        text.each do |t|
        #          str << "<li class=\"navitem\">"
        #          str << "<%= link_to '" 
        #          str << t 
        #          str << "'," 
        #          str << t 
        #          str << "%>"
        #          str << "</li>\n"
        #         str << "</ul>"
        #        end
      end
     
    
      
     
    end
  end
end