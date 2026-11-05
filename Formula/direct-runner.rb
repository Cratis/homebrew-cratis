class DirectRunner < Formula
  desc "Runs Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.34.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.34.0/direct-runner-3.34.0-osx-arm64.tar.gz"
      sha256 "bfb7431d7be3d9c212aa3847b165254836c5cf0ccae7055787328a56f1f10051"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.34.0/direct-runner-3.34.0-osx-x64.tar.gz"
      sha256 "656e38f92cf80a5612403cd3012ec6948b5cdb937c60bddc35253e3518b404a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.34.0/direct-runner-3.34.0-linux-arm64.tar.gz"
      sha256 "f4daa419b896e1aec9d0207e96f3100638b1c9c73332d9ff820ab55f40adcd18"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.34.0/direct-runner-3.34.0-linux-x64.tar.gz"
      sha256 "6542cb10e3a6e1ba75efc8d44320ba65fc665400c1d05f2beca3753b0d72d20c"
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
