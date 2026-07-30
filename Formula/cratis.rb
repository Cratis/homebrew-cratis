class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.3.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.5/cratis-2.3.5-osx-arm64.tar.gz"
      sha256 "2b7b44d4cacf1ae788627c725f179baac31866050fc8f5c3a32bee08cbb51aa8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.5/cratis-2.3.5-osx-x64.tar.gz"
      sha256 "6460e404588c4fb7c87ac48a5b4a249d46e85b99f9aa2f67a0181e0977a3ea8b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.5/cratis-2.3.5-linux-arm64.tar.gz"
      sha256 "330c285ec42c6980748945e92988bf3f63b809b60bb186fc5397c0b6105c4b32"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.5/cratis-2.3.5-linux-x64.tar.gz"
      sha256 "4d4d1bfd9ffe4691a73a96a8dddcf21b12a2cf713924498149639e2ef51db9bb"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
