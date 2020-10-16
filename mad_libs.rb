require './lib/mad_library'



story = "Once upon a time, [person] jumped out of the [ing_word] building. It was very [adjective] said the [role] quietly."

our_mad_lib = MadLibs.new 
our_mad_lib.story_template = story
keywords = our_mad_lib.find_words

our_mad_lib.get_user_input
    
puts our_mad_lib.story_template