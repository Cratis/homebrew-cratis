class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.68.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.68.0/direct-runner-3.68.0-osx-arm64.tar.gz"
      sha256 "a35ecc3779080a2f520d4b489465e5a0962b1806222f07371e5260ab2dd84165"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.68.0/direct-runner-3.68.0-osx-x64.tar.gz"
      sha256 "9a35597a042fc6ecd086c826f93e4e1c626a6dba43351c02cfe00c9a662a1482"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.68.0/direct-runner-3.68.0-linux-arm64.tar.gz"
      sha256 "b017563117dd5b6fb82ce0ce83b05bdb3098bcf29abf6f574e8088108bbb90de"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.68.0/direct-runner-3.68.0-linux-x64.tar.gz"
      sha256 "f04404b50485251b4ec37c7be7b28f69168a86afe45f61558564b9b7775939d4"
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
