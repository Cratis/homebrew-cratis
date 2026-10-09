class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.40.6"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.6/cratis-3.40.6-osx-arm64.tar.gz"
      sha256 "cf9f15ff9b47ef187c1b78fab2477d02bf29632e6f5eed9cb75934014edf48fb"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.6/cratis-3.40.6-osx-x64.tar.gz"
      sha256 "9e7768876f94fe21bf7bfacf0d4b9c670e4f32377aeebb02319f9885d5195539"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.6/cratis-3.40.6-linux-arm64.tar.gz"
      sha256 "3093c166bd5b8fdbe2c70509711a56900bc8ff4fafbf17af19d6ea3b6f7012ef"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.6/cratis-3.40.6-linux-x64.tar.gz"
      sha256 "a1b40454f7bfa6617799773cfa08bed0442322e8461ddaf9b7bae9d6722a907f"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
