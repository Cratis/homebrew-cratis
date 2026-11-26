class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.145.7"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.7/direct-runner-3.145.7-osx-arm64.tar.gz"
      sha256 "f5953f0b0f3ba542de2027088cd5d85fb1bfa70c12376c7151fd56a90ca3b334"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.7/direct-runner-3.145.7-osx-x64.tar.gz"
      sha256 "0787af64bb957262c9732714465528f55210905cedb217cb9b47d20729c1e19c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.7/direct-runner-3.145.7-linux-arm64.tar.gz"
      sha256 "a6c956646bfd609504aabea01823ca52032a53d1d156ed97519ca1217a23808c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.7/direct-runner-3.145.7-linux-x64.tar.gz"
      sha256 "677956072cb1e1ca3cca63c5cbf0e7ace95cd5774a59f3ae73962afa3bf92a09"
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
