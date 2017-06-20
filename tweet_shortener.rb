
# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(' ')
  hash_lookup = dictionary()
  lookup_keys = hash_lookup.keys
  tweet_array.each_with_index do |word, index|
    lookup_keys.each do |key|
      if word == key || word.downcase == key
        tweet_array[index] = hash_lookup[key]
      end
    end
  end
  tweet_array.join(' ')
end

def bulk_tweet_shortener(tweet_array)
  shortened_array = []
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet1 = selective_tweet_shortener(tweet)
  if tweet1.length > 140
    tweet1[0...140]
  else
    tweet1
  end
end
