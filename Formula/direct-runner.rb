class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.138.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.5/direct-runner-3.138.5-osx-arm64.tar.gz"
      sha256 "ab98650efe42d26334c7b94c361451b1cd8c2174a4121128736225f04783bd54"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.5/direct-runner-3.138.5-osx-x64.tar.gz"
      sha256 "c34251083d97ba2dbb3bf3b07f205a685aaaaa01703a1894638767a4d73c4656"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.5/direct-runner-3.138.5-linux-arm64.tar.gz"
      sha256 "d95b8dd0258b1aefccf4023065c395483d704bd706c6cc598eadc2e97c0d0dcb"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.138.5/direct-runner-3.138.5-linux-x64.tar.gz"
      sha256 "513ef6c257fbd153a150d72c9946cdc51badc36985277757f5e4ea8f5273df9c"
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
