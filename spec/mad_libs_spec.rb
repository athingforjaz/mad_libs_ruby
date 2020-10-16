require "mad_library"

describe MadLibs do
    describe "Testing this" do
        it "this should be true" do
            expect(true).to eql(true)
        end
    end

    # Instantiating the class for each test below
    let (:test_word) { MadLibs.new }

    # Can we find the word inside the brackets?
    describe "Test for finding string" do
        it "should find the string" do
            test_word.story_template = "[noun]"
            keyword = test_word.find_words
            expect(keyword).to eql(["noun"])
        end
    end

    #Will it take more than one part of speech? 
    describe "Test for finding more strings" do
        it "should find the strings" do
            test_word.story_template = "[noun] something between [adjective]"
            keyword = test_word.find_words
            expect(keyword).to eql(["noun", "adjective"])
        end
    end

    # Does it actually make the replacement?
    describe "does it replace the story keywords" do 
        it "should replace the keyword" do 
            test_word.story_template = "[noun]"
            story_keywords = "noun"
            user_word = "apple"
            returned_word = test_word.replace_string(story_keywords, user_word)
            expect(returned_word).to eql("apple")
        end
    end
    # describe "takes user input and replaces keywords" do 
    #     it "should get something from the user and something" do
    #         allow($stdin).to receive(:gets).and_return('foo')
    #         expect($stdin).to receive(:gets).with('foo')

    # Does the full replaced story print? 
    # Find out tomorrow in the thrilling conclusion...
    #  (We need to make a test that the story_print function returns the story with replaced part of speech keywords with user input.)

end