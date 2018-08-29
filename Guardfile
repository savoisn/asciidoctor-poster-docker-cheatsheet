require 'asciidoctor'
require 'asciidoctor-pdf'
require './theme/custom.rb'
require './theme/shelldocker.rb'

def buildPDF
  #Asciidoctor.convert_file "docker.adoc", header_footer: true, to_file: true, safe: :safe
  Asciidoctor.convert_file "docker.adoc", backend: "pdf", header_footer: true, to_file: true, safe: :safe,   attributes: {
    'pdf-stylesdir' => './',
    'pdf-style' => 'basic-theme.yml',
    'pdf-fontsdir' => 'fonts'
  }
end

guard 'shell' do
  buildPDF
 
  watch(/.*\.adoc$/) {|m|
    Asciidoctor.convert_file m[0], header_footer: true, to_file: true, safe: :safe
    buildPDF
  }
end

guard 'livereload' do
  watch(%r{^.+\.(css|js|html)$})
end




