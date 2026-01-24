module Jekyll
end

module Jekyll
  module StevensonLoggerPatch
    def initialize(*args, **kwargs)
      super()
      @level_override ||= {}
    end
  end
end

def apply_jekyll_stevenson_patch
  return unless defined?(Jekyll::Stevenson)

  Jekyll::Stevenson.prepend(Jekyll::StevensonLoggerPatch)
  true
end

unless apply_jekyll_stevenson_patch
  TracePoint.new(:class) do |tp|
    next unless tp.self.is_a?(Class) && tp.self.name == "Jekyll::Stevenson"

    apply_jekyll_stevenson_patch
    tp.disable
  end.enable
end
