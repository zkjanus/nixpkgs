/* Generated file. */
args @ { fetchurl, ... }:
rec {
  baseName = "trivia";
  version = "20210630-git";

  description = "NON-optimized pattern matcher compatible with OPTIMA, with extensible optimizer interface and clean codebase";

  deps = [ args."alexandria" args."closer-mop" args."introspect-environment" args."iterate" args."lisp-namespace" args."trivia_dot_balland2006" args."trivia_dot_level0" args."trivia_dot_level1" args."trivia_dot_level2" args."trivia_dot_trivial" args."trivial-cltl2" args."type-i" ];

  src = fetchurl {
    url = "http://beta.quicklisp.org/archive/trivia/2021-06-30/trivia-20210630-git.tgz";
    sha256 = "065bfypzahli8pvnbpiwsvxdp2i216gqr1a1algxkpikifrxkjas";
  };

  packageName = "trivia";

  asdFilesToKeep = ["trivia.asd"];
  overrides = x: x;
}
/* (SYSTEM trivia DESCRIPTION
    NON-optimized pattern matcher compatible with OPTIMA, with extensible optimizer interface and clean codebase
    SHA256 065bfypzahli8pvnbpiwsvxdp2i216gqr1a1algxkpikifrxkjas URL
    http://beta.quicklisp.org/archive/trivia/2021-06-30/trivia-20210630-git.tgz
    MD5 e048a0e20ca12904c032d933795c5e31 NAME trivia FILENAME trivia DEPS
    ((NAME alexandria FILENAME alexandria)
     (NAME closer-mop FILENAME closer-mop)
     (NAME introspect-environment FILENAME introspect-environment)
     (NAME iterate FILENAME iterate)
     (NAME lisp-namespace FILENAME lisp-namespace)
     (NAME trivia.balland2006 FILENAME trivia_dot_balland2006)
     (NAME trivia.level0 FILENAME trivia_dot_level0)
     (NAME trivia.level1 FILENAME trivia_dot_level1)
     (NAME trivia.level2 FILENAME trivia_dot_level2)
     (NAME trivia.trivial FILENAME trivia_dot_trivial)
     (NAME trivial-cltl2 FILENAME trivial-cltl2) (NAME type-i FILENAME type-i))
    DEPENDENCIES
    (alexandria closer-mop introspect-environment iterate lisp-namespace
     trivia.balland2006 trivia.level0 trivia.level1 trivia.level2
     trivia.trivial trivial-cltl2 type-i)
    VERSION 20210630-git SIBLINGS
    (trivia.balland2006 trivia.benchmark trivia.cffi trivia.fset trivia.level0
     trivia.level1 trivia.level2 trivia.ppcre trivia.quasiquote trivia.test
     trivia.trivial)
    PARASITES NIL) */
