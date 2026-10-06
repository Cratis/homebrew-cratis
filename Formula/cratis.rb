class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.28.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.5/cratis-3.28.5-osx-arm64.tar.gz"
      sha256 "094a8f6d4974488b22d2e981bdc8df825876b44f5f0635944a6b98cd5116dfb0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.5/cratis-3.28.5-osx-x64.tar.gz"
      sha256 "876d748a307ccb81c8c4591d08cede0bbf3da2da367e0d8b3bf6e1bdf3f56b87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.28.5/cratis-3.28.5-linux-arm64.tar.gz"
      sha256 "0d2e8aea48f9ab10a6e8ace5fa74ce1d4b1b8b7c98810077f504de34c04c60b2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.28.5/cratis-3.28.5-linux-x64.tar.gz"
      sha256 "1c82f001fa17ab4937bc3eda047091e0a75b9305fe66e47653d7e771328c088a"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
