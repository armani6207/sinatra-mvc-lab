class PigLatinizer

    def split(text)
        x = text.split(" ")
        x
    end

    def piglatinize(text)
        lat_ary = self.split(text).collect do |x|
                    if x.start_with?(/([aeiouAEIOU])/)
                        "#{x}way"
                    else
                        split = x.split(/([aeiou].*)/)
                        "#{split[1]}#{split[0]}ay"
                    end
                  end
        lat_ary.join(" ")
    end

end