class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.104.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.104.0/direct-runner-3.104.0-osx-arm64.tar.gz"
      sha256 "a808f797368d8b8b6efdf34b9991bf26620ff302b4b15fa63119d7aa80eebef7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.104.0/direct-runner-3.104.0-osx-x64.tar.gz"
      sha256 "91cc1674005c98209b46464818a6e22697f66c4609b0020557acd918d5beefcd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.104.0/direct-runner-3.104.0-linux-arm64.tar.gz"
      sha256 "e2fbf1305f14b92151c5e783326949b1ff14187e970575908e77f76856a0199a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.104.0/direct-runner-3.104.0-linux-x64.tar.gz"
      sha256 "9a2c158cfee6de755493b13175f52c0269f9bd397b26e38b049bb5ac28a546b6"
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
