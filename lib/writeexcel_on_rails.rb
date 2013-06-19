require "writeexcel_on_rails/version"
require "action_view/template"
require 'writeexcel'
require "action_controller"
module WriteexcelOnRails
  def self.render_xls_string(template)
    %{
      blob = StringIO.new("")
      workbook = WriteExcel.new(blob)
      #{template}
      workbook.close
      blob.string
    }
  end
end


ActionView::Template.register_template_handler :rxls, lambda{|template|
  WriteexcelOnRails.render_xls_string(template.source)
}
ActionView::Template.register_template_handler :"xls.rxls", lambda{|template|
  WriteexcelOnRails.render_xls_string(template.source)
}

Mime::Type.register "application/xls", :xls
ActionController::Renderers.add :xls do |filename, options|
  send_data(render_to_string(options), :filename => "#{filename}.xls", :type => "application/xls", :disposition => "attachment")
end
