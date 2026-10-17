class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.75.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.75.0/cratis-3.75.0-osx-arm64.tar.gz"
      sha256 "c048fdf1349be49e3a0438c4b004333996c52228e8acf672212fe9a189ca38da"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.75.0/cratis-3.75.0-osx-x64.tar.gz"
      sha256 "56d195a8eeaf3cb874c4679fe11de1086e73157445efeb730e3694987875a59f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.75.0/cratis-3.75.0-linux-arm64.tar.gz"
      sha256 "18ef0a7aa3081b34d85fe010a70a9b7f45f1594befc50ab2ca80c934df005c5d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.75.0/cratis-3.75.0-linux-x64.tar.gz"
      sha256 "94b73987d46ef95118435a20c51ed0c3f61f9b2e0e604b19ac7930a2bbb62226"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
