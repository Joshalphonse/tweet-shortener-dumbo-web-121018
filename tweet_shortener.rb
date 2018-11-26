# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "Hello" =>' Hi',
    "to" => '2',
    "too" => '2',
    "two" => '2',
    "To" => '2',
    "Too" => '2',
    "Two" => '2',
    "for" => '4',
    "four" => '4',
    "For" => '4',
    "Four" => '4',
    "be" => 'b',
    "you" => 'u',
    "Be" => 'B',
    "You" => 'U',
    "at" => '@',
    "and" => '&'
  }
  def bulk_tweet_shortener(bulk)
  bulk.map do |tweet|
      puts word_substituter(tweet)
  end
end
end