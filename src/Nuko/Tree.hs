module Nuko.Tree (
  module Nuko.Tree.Expr,
  module Nuko.Tree.TopLevel,
  Phase(..),
  Nuko
) where

import Nuko.Tree.Expr
import Nuko.Tree.TopLevel

data Phase = Normal | Resolved | Typed
data Nuko (p :: Phase)

-- Some default implementations that someday i'll use

type instance XLetDecl (Nuko _) = NoExt
type instance XProgram (Nuko _) = NoExt
type instance XTypeDecl (Nuko _) = NoExt

type instance XTypeSym (Nuko _) = NoExt
type instance XTypeProd (Nuko _) = NoExt
type instance XTypeSum (Nuko _) = NoExt
