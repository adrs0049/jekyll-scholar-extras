module Jekyll
  class Scholar

    class CiteTagDetails < Liquid::Tag
      include Scholar::Utilities
      include ScholarExtras::Utilities
      
      attr_reader :key, :pages
    
      def initialize(tag_name, arguments, tokens)
        super
        
        @config = Scholar.defaults.dup
        @key = arguments.strip.split(/\s+/)[0]
      end

      def render(context)
        set_context_to context
        cite_details key
      end
      
    end
    
  end
end

Liquid::Template.register_tag('cite_details_dep', Jekyll::Scholar::CiteTagDetails)
