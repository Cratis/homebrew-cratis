class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.151.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.151.0/direct-runner-3.151.0-osx-arm64.tar.gz"
      sha256 "2bc7a90930ceaf27f03fbbb30e8c60c485be0f60fd552747a0521fcb10534eab"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.151.0/direct-runner-3.151.0-osx-x64.tar.gz"
      sha256 "184f0b0e837b4f563eebc635c02a738b0fe60410b3e76e05afca540859b06e2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.151.0/direct-runner-3.151.0-linux-arm64.tar.gz"
      sha256 "59843cccae531dc37d1fd8a567de48a619a9256c572690dee375a2d75e6473ea"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.151.0/direct-runner-3.151.0-linux-x64.tar.gz"
      sha256 "f03f6915f844381d8097d2e181efc0deba09c5afece744035be667e14dacbe5a"
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
