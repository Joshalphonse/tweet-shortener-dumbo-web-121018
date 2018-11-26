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
end

def word_substituter(words)
  result = words.split(" ").map do |word|
    word = dictionary.keys.include?(word) ? dictionary[word] : word
  end
  result.join(" ")
end

def bulk_tweet_shortener(bulk)
  bulk.map do |tweet|
      puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    tweet =  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet = tweet.length > 140 ? "#{tweet[0...137]}...": tweet
end