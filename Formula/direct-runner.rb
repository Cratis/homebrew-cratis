class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.115.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.115.1/direct-runner-3.115.1-osx-arm64.tar.gz"
      sha256 "34fa788409835f601a38546d9af2797af380b8665e9fd223b6eab8f269a6ae09"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.115.1/direct-runner-3.115.1-osx-x64.tar.gz"
      sha256 "7c1c7f155e04c8025e74da7f70c36f2dca8d9e6907411fb168a71ed83ee45709"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.115.1/direct-runner-3.115.1-linux-arm64.tar.gz"
      sha256 "bb557d6d13e6ce6530b4e7301fba825ea9299cd071a3763a0df48e046fdbfc46"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.115.1/direct-runner-3.115.1-linux-x64.tar.gz"
      sha256 "380fb6b13965d6ac10c1476d96588230c3352e36efc4abf69c931851e765074f"
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
