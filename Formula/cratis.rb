class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.78.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.78.0/cratis-3.78.0-osx-arm64.tar.gz"
      sha256 "587a2bfc31c887a9490f89ba46e4f78ca45a56c4e9878deb203d9d906133296e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.78.0/cratis-3.78.0-osx-x64.tar.gz"
      sha256 "cacaca2f88b741a0bc653c9e331e6aa824efd563267fc4f25fa5003049901b0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.78.0/cratis-3.78.0-linux-arm64.tar.gz"
      sha256 "6a3800692c7075423a21bd48c7cc77927b72b4525430fbcefc9b940d40c20dde"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.78.0/cratis-3.78.0-linux-x64.tar.gz"
      sha256 "44e19776fd18cf2654cfa5eb09dc38b9e8880e329faa92d16336dafbcc3d1037"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
