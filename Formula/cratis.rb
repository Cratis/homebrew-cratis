class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.46.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.46.1/cratis-3.46.1-osx-arm64.tar.gz"
      sha256 "f9d1eb605b941ffb88e1b6a08b71f3981c5b22e2a210330d570a7ac427bf8843"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.46.1/cratis-3.46.1-osx-x64.tar.gz"
      sha256 "1a538782440d1bfb131189228b636686d329af779aae0663fa979c4e0a2ce808"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.46.1/cratis-3.46.1-linux-arm64.tar.gz"
      sha256 "bb85832001e5f0d5dfff18a606ee1cea97dcb3a1f5553a32cf47eb91a901de0c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.46.1/cratis-3.46.1-linux-x64.tar.gz"
      sha256 "fdf7ed723a67213ff2313941eca573ed97f2623aa3ca4a861b80edfde6d30b3f"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
