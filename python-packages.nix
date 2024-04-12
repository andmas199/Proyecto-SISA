# Generated by pip2nix 0.8.0.dev1
# See https://github.com/nix-community/pip2nix

{ pkgs, fetchurl, fetchgit, fetchhg }:

self: super: {
  "colorama" = super.buildPythonPackage rec {
    pname = "colorama";
    version = "0.4.6";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/d1/d6/3965ed04c63042e047cb6a3e6ed1a63a35087b6a609aa3a15ed8ac56c221/colorama-0.4.6-py2.py3-none-any.whl";
      sha256 = "1ijz53xpmxds2qf02l9yf0rnp7bznwh3ci4xkw8wmh5cyn8rj7ag";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "setuptools-scm" = super.buildPythonPackage rec {
    pname = "setuptools-scm";
    version = "2.1.0";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/4d/a0/371355cbd608ef1d865738b94f7681e2fe56ef951070a66a892f30042a86/setuptools_scm-2.1.0-py2.py3-none-any.whl";
      sha256 = "10dpxhdb4jwxx7z2pvb6q1fxxhmqdj49cqfb0i6mxb7mvr4gnq8j";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "vunit-hdl" = super.buildPythonPackage rec {
    pname = "vunit-hdl";
    version = "4.7.0";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/06/4e/bb6c6c1aaccc19f5ebd261fa241a044b501a3704dcb8103b769335badbc4/vunit_hdl-4.7.0.tar.gz";
      sha256 = "0bgj31fzsa9vk09303k57smlkxnqyk2vs3bfjr8shbmxpa8vjpx2";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [
      self."setuptools"
      self."setuptools-scm"
    ];
    propagatedBuildInputs = [
      self."colorama"
    ];
  };
}
