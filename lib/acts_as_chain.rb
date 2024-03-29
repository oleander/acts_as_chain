require "acts_as_chain/version"

class Object
  def self.acts_as_chain(*args)
    args.each do |method|
      define_method method do |*args|
        if args.empty?
          instance_variable_get("@#{method.to_s}")
        elsif args.one?
          tap { 
            instance_variable_set("@#{method.to_s}", args.first)
          }
        else
          tap { 
            instance_variable_set("@#{method.to_s}", args)
          }
        end
      end
    end
  end
end