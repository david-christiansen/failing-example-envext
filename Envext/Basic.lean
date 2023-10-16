import Lean

open Lean

def hello := "world"

structure LeanDocState where
  docs : List (Position × String) := []
  deriving Inhabited

builtin_initialize leanDocExt : EnvExtension LeanDocState ←
  registerEnvExtension (pure ⟨[]⟩)
