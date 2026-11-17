class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.127.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.0/direct-runner-3.127.0-osx-arm64.tar.gz"
      sha256 "1a31ec1f4cba330a1e4b8d05455307928c3913387db6922f28ce7600660dfe6a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.0/direct-runner-3.127.0-osx-x64.tar.gz"
      sha256 "0ca92e23208aacfdf7d9e46dd70f711db1fd329d03fb48e507dde7536be2bf71"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.0/direct-runner-3.127.0-linux-arm64.tar.gz"
      sha256 "49c933d61995acc141f27aa96ba0b626abc9c3f0703e99762d7b0d92d299cee5"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.127.0/direct-runner-3.127.0-linux-x64.tar.gz"
      sha256 "092678cf8a17a14312f151405be954abd08af87841fb94429f2f96c4dd359da4"
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
