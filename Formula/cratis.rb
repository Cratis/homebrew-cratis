class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.11.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.11.0/cratis-3.11.0-osx-arm64.tar.gz"
      sha256 "3136940c5f2d2b73b0a8bb6229791d475b5ca4f8e40127f9511be6c2be1b573e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.11.0/cratis-3.11.0-osx-x64.tar.gz"
      sha256 "aeb47defa7434cbfdbdd14f82cee4d4a9ba1c40b104d2fc372980671a9bfe7e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.11.0/cratis-3.11.0-linux-arm64.tar.gz"
      sha256 "3f7365b8171fb61a2c5fd0811fbfc343325205f2115846f91f999c808d7f847a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.11.0/cratis-3.11.0-linux-x64.tar.gz"
      sha256 "231d01081f7cef4478481d0301a1336557a2ac54e37be5b322c8cdce07d47a74"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
