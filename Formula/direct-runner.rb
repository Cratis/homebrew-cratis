class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.74.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.74.0/direct-runner-3.74.0-osx-arm64.tar.gz"
      sha256 "4d25988f8f4e0be6fbf8b7a2ac96a41f19c22f62e542f4ccea658a2401b72990"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.74.0/direct-runner-3.74.0-osx-x64.tar.gz"
      sha256 "2cf89418af2e10cd3078d9df78fa273162d87e29269a4e17cc04682d8d93d0b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.74.0/direct-runner-3.74.0-linux-arm64.tar.gz"
      sha256 "de01af95769fc1c3aff792a45f70177007f7429eebec0e5a48122672a5d5d361"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.74.0/direct-runner-3.74.0-linux-x64.tar.gz"
      sha256 "e1684c0fad50fc3060a549406655d3facf26744091b8a60968123bdc2212aafe"
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
