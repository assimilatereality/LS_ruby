require_relative('stack')

class Linter
  def initialize
    @stack = Stack.new
  end

  def lint(text)
    text.each_char do |char|
      if opening_brace?(char)
        @stack.push(char)
      elsif closing_brace?(char)
        popped_opening_brace = @stack.pop
        if !popped_opening_brace
          return "#{char} doesn't have opening brace"
        end

        if not_a_match(popped_opening_brace, char)
          return "#{char} has mismatched opening brace"
        end
      end
    end

    if @stack.read
      return "#{@stack.read} does not have a closing brace"
    end

    true
  end

  private

  def opening_brace?(char)
    %w|( [ {|.include?(char)
  end

  def closing_brace?(char)
    %w|) ] }|.include?(char)
  end

  def not_a_match(opening_brace, closing_brace)
    closing_brace != { '(' => ')', '[' => ']', '{' => '}' }[opening_brace]
  end
end
