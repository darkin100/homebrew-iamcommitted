class Iamcommitted < Formula
  desc "AI micro bot for generating Git commit messages"
  homepage "https://github.com/darkin100/i-am-committed"
  url "https://github.com/darkin100/i-am-committed/releases/download/v1.0.0/iamcommitted-v1.0.0-macos.tar.gz"
  sha256 "9606a0e9fd3e9a3dc5fa819ab1cd62ea52575368e92b16736eef31d2b0cee129"
  version "1.0.0"
  license "MIT" # Update with your actual license

  def install
    bin.install "iamcommitted"
  end

  test do
    assert_match "iamcommitted #{version}", shell_output("#{bin}/iamcommitted --version")
  end

  def caveats
    <<~EOS
      This application requires an OpenAI API key to function.
      Please set the OPENAI_API_KEY environment variable:
        export OPENAI_API_KEY="your_api_key_here"
    EOS
  end
end
