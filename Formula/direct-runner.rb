class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.134.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.134.0/direct-runner-3.134.0-osx-arm64.tar.gz"
      sha256 "0c19d3acaff18ef1424fee206088e9529b69214cbd5206716732cab1222a13fe"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.134.0/direct-runner-3.134.0-osx-x64.tar.gz"
      sha256 "28c6afee9983775b6d21b4f9a56d0030fa586fe572f537f163af15b9b5582815"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.134.0/direct-runner-3.134.0-linux-arm64.tar.gz"
      sha256 "e239cc0e4c897aed1e390d8b4f1f67438e7ed12292b321ab5008d982d8357928"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.134.0/direct-runner-3.134.0-linux-x64.tar.gz"
      sha256 "97cc205499dc98a427531722fbf928ebff8ad4df53500a509f93990d17e48095"
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
