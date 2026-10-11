class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.51.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.51.0/cratis-3.51.0-osx-arm64.tar.gz"
      sha256 "346eeb1079555e3373ffc5a965b49917c09855c6c5cc8fbffab20ca10e4f0d24"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.51.0/cratis-3.51.0-osx-x64.tar.gz"
      sha256 "aa693c1b33b1468dbbc571663c70f9b78045586f81c6ebfe46850c9870af6d20"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.51.0/cratis-3.51.0-linux-arm64.tar.gz"
      sha256 "ed51547bb3478abc7eb780bd1a32b7809187000832d1ecce14fe456059ad7a1e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.51.0/cratis-3.51.0-linux-x64.tar.gz"
      sha256 "89f8ee8f90f13deaad4428853d072b0f405ee2d10504a31229b1097f4e2a46c2"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
