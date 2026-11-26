class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.151.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.151.0/cratis-3.151.0-osx-arm64.tar.gz"
      sha256 "486dae5e9d637fd09d7cf7f83c9619e998f76fb8af1c6a32c92bd38d6b439d87"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.151.0/cratis-3.151.0-osx-x64.tar.gz"
      sha256 "52ca8d51bd4b56e6b24c2b3154f24ad8f2160d1e52061bd5f857a2269463cf6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.151.0/cratis-3.151.0-linux-arm64.tar.gz"
      sha256 "2f4194f22444c45dc671e24dd676048d089c16e345450308ccb8f38251d324d1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.151.0/cratis-3.151.0-linux-x64.tar.gz"
      sha256 "3ef792053af9600cb65688a9d6f17f3d99ebcb6356c79ee5ad66118580a5684e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
