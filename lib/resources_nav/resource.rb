module ResourcesNav
  class Resource
    attr_accessor :name, :icon
    def initialize(_name, options={})
      @name = _name
      @icon = options[:icon] if options.is_a?(Hash)
    end

    def ==(other)
      if other.is_a?(Symbol)
        name == other
      elsif other.is_a?(String)
        to_s == other
      elsif other.is_a?(self.class)
        name == other.name
      else
        false
      end
    end

    def to_s
      to_sym.to_s
    end

    def to_sym
      name
    end
  end
end