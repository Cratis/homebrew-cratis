class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.148.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.1/direct-runner-3.148.1-osx-arm64.tar.gz"
      sha256 "f44a59d89e2d2b7cf2762a66952a340fe1c3c372e77bb602dc238fa9dcb6c94f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.1/direct-runner-3.148.1-osx-x64.tar.gz"
      sha256 "0477d350839597f5e2c8e49e65fbc18cb0a31e12406c969041a0a8c966f1fd46"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.1/direct-runner-3.148.1-linux-arm64.tar.gz"
      sha256 "42ca8b5deac7185590e1b11547a754d2be99e08f6b2eb4e0edb4bcf1c7fbb2f7"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.1/direct-runner-3.148.1-linux-x64.tar.gz"
      sha256 "f486b6e726e9fef57d3c5c65534a51fe565d756c14e38b6091e6290183e23707"
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
