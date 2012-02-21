class ScssLayoutGenerator < Rails::Generator::Base
  def initialize(runtime_args, runtime_options= {})
    super
    @name = @args.first || 'application'
  end
  
  def manifest
    record do |m|
      m.directory 'app/views/layouts'
      m.directory 'public/stylesheets'
      m.directory 'app/helpers'
      m.direcory  'app/public/images'
      
      m.template "layout.html.erb", "app/views/layouts/#{file_name}.html.erb"
      
      m.file     "#{file_name}/#{file_name}.css", "public/stylesheets/#{file_name}.css"
      m.file     "#{file_name}/#{file_name}_bg.gif", "public/images/#{file_name}_bg.gif"
      m.file     "helper.rb", "app/helpers/layout_helper.rb"
    end
  end
  
  def file_name
    @name.underscore
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
