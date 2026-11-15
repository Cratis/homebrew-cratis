class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.103.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.103.2/direct-runner-3.103.2-osx-arm64.tar.gz"
      sha256 "0f978c5ed9baa5fba0b4b4e437763027abda82d4c86f3526a7b0c4dbdf88d049"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.103.2/direct-runner-3.103.2-osx-x64.tar.gz"
      sha256 "a6e5fdce47ac2cf3dc34cca4424cd85f0c117f8159a00387d5522032413cb94a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.103.2/direct-runner-3.103.2-linux-arm64.tar.gz"
      sha256 "5a68d90bec5a5ca6065763184b9131910ac45fef266197406528cef641f6f178"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.103.2/direct-runner-3.103.2-linux-x64.tar.gz"
      sha256 "1a13e3efe35ef3e0968b2911a9f6fedaacd4e9608f1b78be4da0d415440b8743"
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
