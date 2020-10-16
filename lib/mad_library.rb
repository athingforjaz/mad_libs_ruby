class MadLibs
    attr_accessor :story_template # Makes this an accessible class variable.

    def initialize 
        @story_keywords = [] # Creates the array that will hold the part of speech keywords
    end
    
    # This function takes in our story and replaces the keywords with the user-submitted words. 
    def replace_string keyword, user_word
        #loop through keywords here
        @story_template.gsub("[#{keyword}]", user_word) # We have to add the [] staples back in so that the story_template function below works 
    end

    # So this takes the template and returns an array
    def find_words 
                # breaks the story_template into keywords using .split, which inherently splits at spaces
        keywords = @story_template.split()
        # Using a for loop, looks at each word in the story_template and identifies if it is not empty and has a staple []
        keywords.each do |word|
            if (word != "") && (word[0] == "[")
                @story_keywords << word[1..-2] # This line takes every char from after the [ until the ]
            end
        end
        @story_keywords 
    end
    # Loops through our story keywords, and as long as there is a story keyword found with the brackets ([]), will ask the user for a replacement word and put it into the story_template.
    def get_user_input 
        @story_keywords.each do |word|
            puts "Enter a #{word}"
            new_word = gets.chomp
            @story_template = replace_string word, new_word
        end  
    end
end