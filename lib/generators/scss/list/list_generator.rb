require 'generators/scss'

module Scss
  module Generators
    class ListGenerator < Base
      include Rails::Generators
      
      argument :f_name,        :type => :string,                      :banner => 'f_name'
      argument :list_type,     :type => :string,   :default => 'u',   :banner => 'list_type'
      argument :num_of_items,  :type => :string,   :default => '0',   :banner => 'num_of_items'
      argument :text,          :type => :array,                       :banner => 'text'
      
      append_file "app/views/#{file_name}.html.erb",  list_items
          
      
      def list_items
        if (list_type == 'u') 
          str = "<ul>"
        else
          str = "<ol>"
        end
        
        text.each do |t|
          str << "<li>t</li>\n"
        end
        
        if (list_type == 'u')  
          str << "</ul>"
        else
          str << "</ol>"
        end
      end
     
        
      def file_name
        f_name.underscore
      end 
      
     
    end
  end
end