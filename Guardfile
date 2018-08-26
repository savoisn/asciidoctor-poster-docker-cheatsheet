require 'asciidoctor'

guard 'shell' do
  watch(/.*\.adoc$/) {|m|
    Asciidoctor.convert_file m[0], header_footer: true, to_file: true, safe: :safe
  }
end

guard 'livereload' do
  watch(%r{^.+\.(css|js|html)$})
end




