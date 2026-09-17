class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.4.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.4.1/cratis-3.4.1-osx-arm64.tar.gz"
      sha256 "d830965a189c071bfa8f257055dcc3a1f9a61ddbe296c5c025a1b48f95fdaa0a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.4.1/cratis-3.4.1-osx-x64.tar.gz"
      sha256 "c920ab14bbfa5db41499355f68a46bf28704a039f8978d345286f4cecc403b3e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.4.1/cratis-3.4.1-linux-arm64.tar.gz"
      sha256 "a96db288e43ae0ac12ed50670216663e6467506717e8e5b9e72611ceb42434b6"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.4.1/cratis-3.4.1-linux-x64.tar.gz"
      sha256 "8c866872f4f615cf835fdef847637d3a337239486a2086e69bacf894dc61b04e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
