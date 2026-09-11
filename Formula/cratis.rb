class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.1.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.4/cratis-3.1.4-osx-arm64.tar.gz"
      sha256 "80326beee1d50a151d65564203475d19956237a02ca37381d867aead056edc95"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.4/cratis-3.1.4-osx-x64.tar.gz"
      sha256 "a3383d47162939e1ee806c80546c8553ee71881fea8dab29ab56e33c2321263a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.4/cratis-3.1.4-linux-arm64.tar.gz"
      sha256 "b8496afed8793a7f91eea9dcea9ef2f669c5de5004736581b0b91757a8c7c959"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.4/cratis-3.1.4-linux-x64.tar.gz"
      sha256 "2d4eaec89076e0c81105d80246c004076a6157d783c4b8ab3963e2dbaa464731"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
