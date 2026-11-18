class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.133.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.0/direct-runner-3.133.0-osx-arm64.tar.gz"
      sha256 "8e5e563697704bb1f302fa8874b7fbae7dd91faeaea5b479de452dbcab5709f3"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.0/direct-runner-3.133.0-osx-x64.tar.gz"
      sha256 "af6f35fbc41ea8b42a00ed75691f5e1cd15d0202b5c7af09bfa52067b0939c74"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.0/direct-runner-3.133.0-linux-arm64.tar.gz"
      sha256 "7738955557cc95f5b9537f3bc12a45d285ff43bd8f384128b592cc87ee1b6af6"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.133.0/direct-runner-3.133.0-linux-x64.tar.gz"
      sha256 "b1314ddc7384902486a1f6bea37451dd19608fe19f41a5af0ae60bc1fcba9903"
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
