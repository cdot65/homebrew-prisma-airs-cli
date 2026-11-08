# airs-cli 8.2.0, rendered by scripts/homebrew-formula.sh from packaging/homebrew/airs-cli.rb.in.
class AirsCli < Formula
  desc "Native Rust CLI for Prisma AIRS"
  homepage "https://crates.io/crates/airs-cli"
  url "https://crates.io/api/v1/crates/airs-cli/8.2.0/download"
  sha256 "4b5a40b96ac4edccf655b6571355e14ae7ef85546bb776c415618a3ac94a20c2"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "airs", *std_cargo_args
    # The TypeScript CLI's name (from 8.0) and the 1.x compatibility name.
    bin.install_symlink "airs" => "airs-cli"
    bin.install_symlink "airs" => "airs-cli-rs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/airs --version").strip
    assert_equal version.to_s, shell_output("#{bin}/airs-cli --version").strip
    assert_equal version.to_s, shell_output("#{bin}/airs-cli-rs --version").strip
    ENV["AIRS_CLI_CONFIG_DIR"] = (testpath/"store").to_s
    assert_equal "[]", shell_output("#{bin}/airs tenant list --output json").strip
  end
end
