(*

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 *)

theory Setp_Setup_GenSet0
  imports Main  "../../../TestLemma_Setup"
begin

instruction_semantics_parser "../InstructionSemantics/StrataRules/strata_rules_setp"
lemmas strata_rules_setp.semantics_def [code]

abbreviation InstructionUnderTest :: "instr_mnemonic" where "InstructionUnderTest \<equiv> IS_80386 Setp"

end