class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.37.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.2/direct-runner-3.37.2-osx-arm64.tar.gz"
      sha256 "e430546bf834235e0b9fc1afc74c5dba2020cee7217ed4539b99dc50b9c6871f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.2/direct-runner-3.37.2-osx-x64.tar.gz"
      sha256 "3b251ae93dd2a9cbdbc6a6d2ab63da8d0bc00f3b352b3a5700068684548e580c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.2/direct-runner-3.37.2-linux-arm64.tar.gz"
      sha256 "e1a3636c96146fa4fc91bbf50a887fd5c9cdfd7b8477f8444b9cc1ee2594a949"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.37.2/direct-runner-3.37.2-linux-x64.tar.gz"
      sha256 "dc0a34cbfbb52aafcfe2450f2ce0988397b24178f7bae566e44e8e8d90c0d005"
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
