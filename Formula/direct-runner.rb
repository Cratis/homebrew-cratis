class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.60.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.2/direct-runner-3.60.2-osx-arm64.tar.gz"
      sha256 "a0ec1c86403a35dc4b7784affc0416b49bf9dade3d47a2ffc9efa69769fa3986"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.2/direct-runner-3.60.2-osx-x64.tar.gz"
      sha256 "100032d7f6666dc292e6c252e17ffbcfde2f770845b36d332615fb56bdb03538"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.2/direct-runner-3.60.2-linux-arm64.tar.gz"
      sha256 "58529ea8487dfb1c46ea312d6eb3a23081461c7b02e75413ca66443c0cb8aa0c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.60.2/direct-runner-3.60.2-linux-x64.tar.gz"
      sha256 "b5fb325936d45064246eac809fdb2aa7aba31e3c77cff6b512f05e0d63af164a"
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
