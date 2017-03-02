require_relative "../html"

RSpec.describe HTML do
  describe ".tag" do
    it "Create a link to Google" do
      result = HTML.tag("a", "Google", href: "https://google.com")

      expect(result).to eq(%{<a href="https://google.com">Google</a>})
    end

    it "Create a link to Google and open in new page" do
      result = HTML.tag("a", "Google", href: "https://google.com", target: "_blank")

      expect(result).to eq(%{<a href="https://google.com" target="_blank">Google</a>})
    end
  end
end
