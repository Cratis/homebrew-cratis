class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.69.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.69.0/cratis-3.69.0-osx-arm64.tar.gz"
      sha256 "af00ee2cb677fd71878f63517c673864e976832c96bde90c7a46a8a1963f0384"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.69.0/cratis-3.69.0-osx-x64.tar.gz"
      sha256 "fa989b1ae80eecf3cb076abcc035029444c9798f29c2ecd172e89b83fb288133"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.69.0/cratis-3.69.0-linux-arm64.tar.gz"
      sha256 "9b69cdd4aa962a66f1a1202246481c7f4595f16469a3f39e1f25b9fa34b13c2b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.69.0/cratis-3.69.0-linux-x64.tar.gz"
      sha256 "149c359ddbf16860d1333032bc7f1aec31bb9f480ce07ada65a6c0b73c60c7a8"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
