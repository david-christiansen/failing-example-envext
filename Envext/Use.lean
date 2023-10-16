import Envext.Basic

import Lean
open Lean

syntax "!!!" : term

elab_rules : term
  | `(term| !!! ) => do
    modifyEnv (leanDocExt.modifyState · id)
    Lean.Elab.Term.elabTerm (← `(inferInstance)) none


