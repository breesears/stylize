require 'generators/scss'

module Scss
  module Generators
    class ElementGenerator < Base
      include Rails::Generators
      
      argument :f_name,       :type => :string,                  :banner => 'f_name'
      argument :element_name, :type => :string,                  :banner => 'element_name'
      argument :css_name,     :type => :string,                  :banner => 'css_name'
      argument :text_name,    :type => :string,  :default => '', :banner => 'text_name' 
      argument :rows,         :type => :number,  :default => 0,  :banner => 'rows'
      argument :cols,         :type => :number,  :default => 0,  :banner => 'cols'
      
      def which_element
        if (element_name == ('p' || 'div'))
          append_file "app/views/#{file_name}.html.erb", "<#{element} class=\"#{css_class}\">#{text_name}</#{element}>"
        else (element_name == ('table')
          append_file "app/views/#{file_name}.html.erb", "<#{element}>",  
            rows.each do |r|
               "<tr>\n",
                 cols.each do |c|
                   "<td>&nbsp;</td>\n",
                  end
               "</tr>\n"
            end
        end
      end
      
     
        
      def file_name
        f_name.underscore
      end 
      
      def element
        element_name.underscore
      end
      
    def css_class
        css_name.underscore
      end
    end
  end
end