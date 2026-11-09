class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.124.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.124.0/cratis-3.124.0-osx-arm64.tar.gz"
      sha256 "153effd506bbefb2398b491e9a1e398854535247cba5e4f70c54dca408d9f88b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.124.0/cratis-3.124.0-osx-x64.tar.gz"
      sha256 "bc936ac10247bbd96de9d889addb85506de146055a60875613fb960f89d21233"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.124.0/cratis-3.124.0-linux-arm64.tar.gz"
      sha256 "a1a3e519d291ee02b3880e7a069638c4cd2b69a05f36b7173e3bf256a01a22a2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.124.0/cratis-3.124.0-linux-x64.tar.gz"
      sha256 "d1c2bbd0ef8e9a6a45663199ffcff36bc1f36b2dd3c3132ca27f2680646b3035"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
