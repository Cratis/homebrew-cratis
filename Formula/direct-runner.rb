class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.114.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.114.0/direct-runner-3.114.0-osx-arm64.tar.gz"
      sha256 "b4a121e22108b78ee265e288fffcf5f030e06ca6432cff27c824a6b2be4cb112"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.114.0/direct-runner-3.114.0-osx-x64.tar.gz"
      sha256 "f1254dbd7c251375d7ddc5e6807caa5baec93d093a9aa52a02cbaa5923fd71fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.114.0/direct-runner-3.114.0-linux-arm64.tar.gz"
      sha256 "85844bbb2d2349cb9fd35870f766edb5e577f9b1ae3d9df1e2081cbf4ede4a5b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.114.0/direct-runner-3.114.0-linux-x64.tar.gz"
      sha256 "27df6476b7f68f5832516dfe3bcabfab076451434d80c56ae356ecdeed8a0526"
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
