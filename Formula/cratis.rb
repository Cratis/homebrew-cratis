class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.1.0/cratis-2.1.0-osx-arm64.tar.gz"
      sha256 "a6984c76d5f897dcafb58c947c0f90e0a2c5e4d846838f79bd82d4c1f575b27b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.1.0/cratis-2.1.0-osx-x64.tar.gz"
      sha256 "4585f067af8d3a003bf416048d686931d7c5bcb5fd11147b9be8cb3e3ffc541a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.1.0/cratis-2.1.0-linux-arm64.tar.gz"
      sha256 "9e3978679c7f47ad6b4978e8289c7fba88086e10c83864e3e456761f96706d1f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.1.0/cratis-2.1.0-linux-x64.tar.gz"
      sha256 "bbd25b3946f52236c7727f02bc57b4f05605ab74702009ff844a984f304f8bb6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
