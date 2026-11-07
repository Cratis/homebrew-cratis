class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.40.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.5/direct-runner-3.40.5-osx-arm64.tar.gz"
      sha256 "776714cdcf0e49bb29a58d100a747959d1fecac0882ff54fbd2c950e8c00f080"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.5/direct-runner-3.40.5-osx-x64.tar.gz"
      sha256 "1e447861251c76fe737b4a3332792690a6f0706decd39bab118a6cc2a6c2180c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.5/direct-runner-3.40.5-linux-arm64.tar.gz"
      sha256 "897db626d188a1ccdd4e523a34a681fbb2fdd8ca317e0dce6acd4b0af7e955dd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.40.5/direct-runner-3.40.5-linux-x64.tar.gz"
      sha256 "86a13adf05e91863ee0f055aa6821f9bf2758bc5f277f766498f967f2729345d"
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
