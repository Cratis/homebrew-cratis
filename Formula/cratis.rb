class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.13.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.13.1/cratis-2.13.1-osx-arm64.tar.gz"
      sha256 "f93dae3230cba1e11f5a0f9bf5260020488273951ef68f5a5f605394e190a17f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.13.1/cratis-2.13.1-osx-x64.tar.gz"
      sha256 "b412313bb6f439e5ab6cdf09111e0ce3139a2ca41d7213c25aa5a251144a388b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.13.1/cratis-2.13.1-linux-arm64.tar.gz"
      sha256 "1b8c5f26c24d6729715619197dee68d9f9ff3fa1931dcd73cb4d9afaecceb7eb"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.13.1/cratis-2.13.1-linux-x64.tar.gz"
      sha256 "a8e62398bf03580ddf5d3a6d6dcbf9d618411f2b917cfc66d89dfae53bd5b2b9"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
