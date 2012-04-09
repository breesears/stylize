class ScssLayoutGenerator < Rails::Generator::Base
  def initialize(runtime_args, runtime_options= {})
    super
    @name = @args.first
    @color = @args.second
  end
  
  def manifest
    record do |m|
      m.directory 'app/views/layouts'
      m.directory 'public/stylesheets/'
      m.directory 'app/helpers'
      m.directory 'public/images'
      m.directory 'public/script/'
      # m.directory 'jquery/'
    
      
      m.template "layout.html.erb", "app/views/layouts/application.html.erb"
      m.file     "jquery.datePicker.js", "public/script"
      m.file     "#{file_name}/#{file_name}.css", "public/stylesheets/#{file_name}/#{file_name}.css"
      m.file     "#{file_name}/#{file_name}_bg.gif", "public/images/#{file_name}/#{file_name}_bg.gif"
    end
  end
  
  def file_name
    @name.underscore
  end
  
  def color_name
    @color.underscore
  end
  
  protected
  
  def add_options!(opt)
    opt.separator ''
    opt.separator 'Options:'
  end
  
  def banner
    <<-EOS
    Creates generic layout, stylesheet, and helper files.
    
    USAGE: #{$0} #{spec.name} [layout_name]
    EOS
    
  end
end
