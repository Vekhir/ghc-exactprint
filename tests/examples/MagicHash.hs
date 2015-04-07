{-# LANGUAGE MagicHash #-}

module Data.Text.Internal.Builder.Functions
    (
      (<>)
    , i2d
    ) where

import Data.Monoid (mappend)
import Data.Text.Lazy.Builder (Builder)
import GHC.Base

-- | Unsafe conversion for decimal digits.
{-# INLINE i2d #-}
i2d :: Int -> Char
i2d (I# i#) = C# (chr# (ord# '0'# +# i#))

-- | The normal 'mappend' function with right associativity instead of
-- left.
(<>) :: Builder -> Builder -> Builder
(<>) = mappend
{-# INLINE (<>) #-}

infixr 4 <>