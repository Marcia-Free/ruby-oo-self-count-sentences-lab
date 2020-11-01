require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    sentences = self.split(/[\. | \! | \? ]/)
    sentences.delete_if { |sentence|
      sentence.length < 2
      #binding.pry
    }
    sentences.count
    binding.pry
  end
end