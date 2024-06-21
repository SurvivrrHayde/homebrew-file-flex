class FileFlex < Formula
  desc "File Flex is a cross-platform tool designed to simplify file system operations, making it easy for users to manage files and directories."
  homepage "https://github.com/SurvivrrHayde/file-flex"
  url "https://github.com/SurvivrrHayde/file-flex/releases/download/v1.0.0/file-flex-1.0.0.tar.gz"
  sha256 "d8dc46af86445717987f3153b3b4822a7393b28e348a1e7b1a9e69330ed9109e"
  license "MIT"

  def install
    bin.install "bin/file-flex"
    (bash_completion/"file-flex").install "scripts/file-flex-completion.sh"
  end

  test do
    system "#{bin}/file-flex", "help"
  end
end

