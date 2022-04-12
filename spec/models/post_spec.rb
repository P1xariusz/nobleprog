require 'spec_helper'

describe Post do
    subject(:post){ Post.new(consent: my_content)}
    let(:my_content) do
        """coś tam coś tam"""
    end

    describe '#content_keywords' do
    it 'return _count_ words' do 
        expect(post.content_keyword(3).lenght).to eq(3)
    end

    it 'contains only words taht are present in a post' do
        expect (my_content).to include(*post.content_keywords(3))   
    end

end