# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dgraph < Formula
  desc "CLI tool to output mermaid dependencies between Swift Package Manager targets"
  homepage "https://github.com/Ryu0118/swift-dependencies-graph"
  url "https://github.com/Ryu0118/swift-dependencies-graph/releases/download/0.1.0/dgraph"
  sha256 "ec6f60ad5791ed389960d122a4d21cd18b3f2afa54b7b3b2af758a84d67cbd81"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method

    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "dgraph"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Kusa`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/dgraph", "--version"
  end
end
