require 'open-uri'
require 'nokogiri'
class JlptQuestionTool < RubyLLM::Tool
  description "Get Example Questions and Answers for Relevant JLPT Level"
  param :level, desc: "between 1 and 5"
  param :category, desc: "either vocabulary, grammar, kanji, reading"

  def execute(level:, category:)
    url = "https://japanesetest4you.com/japanese-language-proficiency-test-jlpt-n#{level}-#{category}-exercise-4/"
    puts url
    response = URI.parse(url).read({
                                          'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Accept-Language' => 'en'
                                        })

    doc = Nokogiri::HTML(response)
    doc.search("div.entry.clearfix")

  rescue => e
    { error: e.message }
  end
end
