require "language/node"

class Api < Formula
  desc "The Optic CLI"
  homepage "https://github.com/opticdev/optic"
  url "https://registry.npmjs.org/@useoptic/cli/-/cli-8.2.4.tgz"
  version "8.2.4"
  sha256 "ba89acecf86d0ce874b05337e08e8deed2c79d86f8d4dd6884820bfbb7703748"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
