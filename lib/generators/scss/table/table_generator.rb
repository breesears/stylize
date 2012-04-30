require 'generators/scss'

module Scss
  module Generators
    class TableGenerator < Base
      include Rails::Generators
      
      argument :f_name,       :type => :string,                     :banner => 'f_name'
      argument :rows,         :type => :string,   :default => '0',  :banner => 'rows'
      argument :cols,         :type => :string,   :default => '0',  :banner => 'cols'
      
      def create_element
        append_file "app/views/#{file_name}.html.erb",  rows_cols
      end  
      
      def rows_cols
        str = "<table>"
        r.times do |r|
          str << "<tr>\n"
          c.times do |c|
            str << "<td>&nbsp;</td>\n"
          end
          str << "</tr>"
        end
        str << "</table>"
        return str
      end
     
      def r
        rows.to_i
      end
      
      def c
        cols.to_i
      end
        
      def file_name
        f_name.underscore
      end 
      
     
    end
  end
end