require 'generators/scss'

module Scss
  module Generators
    class ListGenerator < Base
      include Rails::Generators
      
      argument :f_name,        :type => :string,                      :banner => 'f_name'
      argument :list_type,     :type => :string,                      :banner => 'list_type'
      argument :text,          :type => :array,                       :banner => 'text'
      
      append_file "app/views/#{f_name}.html.erb",  list_items
          
      
      def file_name
        f_name.underscore
      end
        
      def list_items
        if (list_type == 'o') 
          str = "<ol>"
        else
          str = "<ul>"
        end
        
        text.each do |t|
          str << "<li>t</li>\n"
        end
        
        if (list_type == 'o')  
          str << "</ol>"
        else
          str << "</ul>"
        end
      end
     
    
      
     
    end
  end
end