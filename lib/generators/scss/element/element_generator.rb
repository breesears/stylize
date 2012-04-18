require 'generators/scss'

module Scss
  module Generators
    class ElementGenerator < Base
      include Rails::Generators
      
   #   argument :element_name, :type => :string, :banner => 'element_name'
    #  argument :css_name,     :type => :string, :banner => 'css_name'
     argument :f_name,       :type => :string, :banner => 'f_name'
      argument :text_name,    :type => :string, :banner => 'text_name' :default => ''
      
      def add_element
        append_file "app/views/#{file_name}.html.erb", "#{text_name}" #{}"<#{element_name} = #{css_class}>#{text_name}</#{element_name}"
      end
        
      def file_name
        f_name.underscore
      end 
      
    #  def css_class
     #   css_name.underscore
      #end
    end
  end
end