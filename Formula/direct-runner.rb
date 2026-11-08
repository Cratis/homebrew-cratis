class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.52.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.52.1/direct-runner-3.52.1-osx-arm64.tar.gz"
      sha256 "f10e3a5b21dbe4bf3405e10c067c99d13da40e71ca9be93a9ecdf80baa8eef43"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.52.1/direct-runner-3.52.1-osx-x64.tar.gz"
      sha256 "a42df866bcd32b54bedf2b57d75814c72155d32f3aaeaa4d2b480614313d9d11"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.52.1/direct-runner-3.52.1-linux-arm64.tar.gz"
      sha256 "8afb6e63bb20c9095b981dc4b469ddd81769402d2f25a1303d4f0e330bd4b9e7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.52.1/direct-runner-3.52.1-linux-x64.tar.gz"
      sha256 "2d95632cf4a79f0f780dfc9901eeac91f5c0d44e905bacffc24904369c984873"
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
