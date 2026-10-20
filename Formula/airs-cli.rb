# airs-cli 1.0.0, rendered by scripts/homebrew-formula.sh from packaging/homebrew/airs-cli.rb.in.
class AirsCli < Formula
  desc "Native Rust CLI for Prisma AIRS"
  homepage "https://crates.io/crates/airs-cli"
  url "https://crates.io/api/v1/crates/airs-cli/1.0.0/download"
  sha256 "10174f42560e84580f0800b1268244b6719a4c0157da3892a1860c54721f7d77"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "airs", *std_cargo_args
    # The 1.x compatibility name.
    bin.install_symlink "airs" => "airs-cli-rs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/airs --version").strip
    assert_equal version.to_s, shell_output("#{bin}/airs-cli-rs --version").strip
    ENV["AIRS_CLI_CONFIG_DIR"] = (testpath/"store").to_s
    assert_equal "[]", shell_output("#{bin}/airs tenant list --output json").strip
  end
end
