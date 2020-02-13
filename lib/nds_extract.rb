$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

pp directors_database

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  gross = 0 
  i = 0 
  while i < director_data[:movies].count do 
  gross += director_data[:movies][i][:worldwide_gross]
  i += 1 
  end
  gross 
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

```
directors_database(nds)
  this_director_gross = 0 
  directors_gross = {}
  director_i = 0 
  while director_i < nds.count do 
    movie_i = 0 
    while movie_i < nds[director_i][:movies].count do 
    this_director_gross += nds[director_i][:movies][movie_i][:worldwide_gross]
    movie_i += 1 
    end
    directors_gross[nds[director_i][:name]] = this_director_gross
    this_director_gross = 0 
    director_i += 1 
  end
  directors_gross
end
```

def directors_totals(nds)
  result = {}
  nil
end
