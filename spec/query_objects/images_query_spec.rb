require 'rails_helper'

describe ImagesQuery do
  describe '.response' do
    subject(:images) { ImagesQuery.new(options) }
    let(:options)    { { "q"=>"music" } }

    it "returns images according to options parameters" do
      expect(images.response['results'].first['results'].size).to eql 50
    end

  end
end
