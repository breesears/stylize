require 'generators/scss'

module Scss
  module Generators
    class HeadingGenerator < Base
      include Rails::Generators
      
      argument :f_name,       :type => :string,                   :banner => 'f_name'
      argument :text_name,    :type => :string,   :default => '', :banner => 'text_name' 
          
      append_file "app/views/#{file_name}.html.erb", "<p class=\"heading\">#{text_name}</p>"
        
        
      def file_name
        f_name.underscore
      end 
      
      def element
        element_name.underscore
      end
      
   
    end
  end
end