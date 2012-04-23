require 'generators/scss'

module Scss
  module Generators
    class ListGenerator < Base
      include Rails::Generators
      
      argument :f_name,        :type => :string,                      :banner => 'f_name'
      argument :list_type,     :type => :string,                      :banner => 'list_type'
      argument :text,          :type => :array,                       :banner => 'text'
      
      def create_element
        append_file "app/views/#{file_name}.html.erb",  list_items
      end    
      
      def file_name
        f_name.underscore
      end
        
      def list_items
        if (list_type == 'o') 
          str = "<ol>\n"
        else
          str = "<ul>\n"
        end
        
        text.each do |t|
          str << "<li>" 
          str << t 
          str << "</li>\n"
        end
        
        if (list_type == 'o')  
          str << "</ol>\n"
        else
          str << "</ul>\n"
        end
      end
     
    
      
     
    end
  end
end