require 'open-uri'
unless ::URI.const_defined?(:Mapping)
  ::URI::Mapping = {}
  module ::Kernel
    private
    alias :open_without_mapping :open
    def open(name, *rest, &block)
      open_without_mapping(::URI::Mapping[name] || name, *rest, &block)
    end
  end
end

