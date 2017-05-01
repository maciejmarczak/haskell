{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_hs_quiz (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/maciej/Projects/haskell/hs-quiz/.stack-work/install/x86_64-linux/lts-8.11/8.0.2/bin"
libdir     = "/home/maciej/Projects/haskell/hs-quiz/.stack-work/install/x86_64-linux/lts-8.11/8.0.2/lib/x86_64-linux-ghc-8.0.2/hs-quiz-0.1.0.0-DwcPWDnTmNP9HGqxN1656S"
dynlibdir  = "/home/maciej/Projects/haskell/hs-quiz/.stack-work/install/x86_64-linux/lts-8.11/8.0.2/lib/x86_64-linux-ghc-8.0.2"
datadir    = "/home/maciej/Projects/haskell/hs-quiz/.stack-work/install/x86_64-linux/lts-8.11/8.0.2/share/x86_64-linux-ghc-8.0.2/hs-quiz-0.1.0.0"
libexecdir = "/home/maciej/Projects/haskell/hs-quiz/.stack-work/install/x86_64-linux/lts-8.11/8.0.2/libexec"
sysconfdir = "/home/maciej/Projects/haskell/hs-quiz/.stack-work/install/x86_64-linux/lts-8.11/8.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "hs_quiz_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "hs_quiz_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "hs_quiz_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "hs_quiz_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "hs_quiz_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "hs_quiz_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
