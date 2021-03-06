require 'generators/scss'

module Scss
  module Generators
    class ElementGenerator < Base
      include Rails::Generators
      
      argument :f_name,       :type => :string,                   :banner => 'f_name'
      argument :element_name, :type => :string,                   :banner => 'element_name'
       argument :css_name,     :type => :string,                   :banner => 'css_name'
         argument :text_name,    :type => :string,   :default => '', :banner => 'text_name'
     
     
     

     
    
   
      
       
      def which_element
        if (element_name == ('p' || 'div'))
               
          append_file "app/views/#{file_name}.html.erb", "<#{element} class=\"#{css_class}\">#{text_name}</#{element}>"
        # else
        #         if (element_name == 'table')
        #             argument :rows,         :type => :string,   :default => '0',  :banner => 'rows'
        #             argument :cols,         :type => :string,  :default => '0',  :banner => 'cols'
        #          append_file "app/views/#{file_name}.html.erb",  rows_cols
        #         end 
        end
      end
      
      # def rows_cols
      #        str = "<table>"
      #        r.times do |r|
      #          str << "<tr>\n"
      #          c.times do |c|
      #            str << "<td>&nbsp;</td>\n"
      #          end
      #          str << "</tr>"
      #        end
      #        str << "</table>"
      #        return str
      #      end
      #     
      #      def r
      #        rows.to_i
      #      end
      #      
      #      def c
      #        cols.to_i
      #      end
        
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