class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.89.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.89.1/cratis-3.89.1-osx-arm64.tar.gz"
      sha256 "2a1d684f5652968f8b435a3694f9f08deac183c4e73368625636e76e5b424453"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.89.1/cratis-3.89.1-osx-x64.tar.gz"
      sha256 "f01db106497341b4812265b91c4a964290bd5a7dfcd812ec1a4982fc29b1ff27"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.89.1/cratis-3.89.1-linux-arm64.tar.gz"
      sha256 "556172ccd2da62c40a7abfc925c5a01c40501cc63efcefaaa45df9ef12a22830"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.89.1/cratis-3.89.1-linux-x64.tar.gz"
      sha256 "765f3be105270f485d797fb192d342fc1e5b79384a43893b9877507fd6e99bf4"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
