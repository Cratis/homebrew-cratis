class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.75.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.1/direct-runner-3.75.1-osx-arm64.tar.gz"
      sha256 "5a0760a4f0a2c1ae54f399a90a819348db0f9cecbf8b0926ce172afd1c7116fc"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.1/direct-runner-3.75.1-osx-x64.tar.gz"
      sha256 "94fb6fec19f702172335eba9a41d330f9c39aab6c31ecba6a8942a67a7aff15d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.1/direct-runner-3.75.1-linux-arm64.tar.gz"
      sha256 "c63dd31f3cfd357e9e20e2815329eaf89844b4cf2280568a45ab2755fdef254f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.75.1/direct-runner-3.75.1-linux-x64.tar.gz"
      sha256 "0f4742a5f7a375514c17ba93761d88b36ce4ab0070557ce10aa48492d97a95e5"
    end
  end

  def install
    bin.install "direct-runner"
  end

  service do
    run [opt_bin/"direct-runner"]
    keep_alive true
    log_path var/"log/direct-runner.log"
    error_log_path var/"log/direct-runner.log"
  end
end
