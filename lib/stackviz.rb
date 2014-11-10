require "stackviz/version"
require "stackprof"

class Stackviz
  def self.profile(mode: :cpu, path: nil, open: true, &block)
    stackviz = self.new(path)
    stackviz.run(mode, &block)
    stackviz.open_graph if open
  end

  def initialize(path)
    return @path = path if path

    temp  = `mktemp /tmp/stackviz-XXXXXXXX`.strip
    @path = "#{temp}.gif"
    `mv #{temp} #{@path}`
  end

  def run(mode, &block)
    ensure_dot_existence

    result = StackProf.run(mode: mode, &block)

    Tempfile.open('stackviz') do |f|
      StackProf::Report.new(result).print_graphviz(nil, f)
      f.flush

      File.open(@path, 'w') do |graph|
        `dot -Tgif #{f.path} -o #{graph.path}`
      end
    end
  end

  def open_graph
    system("open #{@path}")
  end

  private

  def ensure_dot_existence
    unless system("which dot > /dev/null")
      abort "`dot` does not exist. Please install graphviz first."
    end
  end
end
