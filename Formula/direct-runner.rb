class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.125.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.125.0/direct-runner-3.125.0-osx-arm64.tar.gz"
      sha256 "0a0ac1b101025a90d546e0a30838cb88ef790d1641ce4f9df95ecf1dd541eeea"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.125.0/direct-runner-3.125.0-osx-x64.tar.gz"
      sha256 "ebe14c0a72626093bb45ab2ee453e49be3babc90ace6098490fea17dcaf6fc02"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.125.0/direct-runner-3.125.0-linux-arm64.tar.gz"
      sha256 "38aa50077aa3d86071a4890dc8918fef40ced9341fb4c8f40214012caf2c8a6f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.125.0/direct-runner-3.125.0-linux-x64.tar.gz"
      sha256 "b3f45d726d344fa2bdc1c51d3149d0bf6d938ff385583075aa2a45dfc6807b2a"
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
