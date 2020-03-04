lemma Test%1%:
  assumes "seps blocks"
      and "(MemoryBlockID,addr,MemSize) \<in> blocks"
  shows  " src = simd_dst \<longrightarrow> 
     (let'  
        (fam,n,o_sig) = Get_Instr_Sig  (Instr InstructionUnderTest (MemSize*8) addr src);
        test_formula = the ((the ((the ((instr_semantics semantics) (fam))) (n))) (o_sig));
        start_regs = concat [(zip (tuple_to_list src) Test%1%_src_start), Test%1%_xtra_regs_start]
      in exec_learned_instr_testing  
          flag_annotation test_formula (Instr InstructionUnderTest (MemSize*8) addr src)
          (State start_regs [(addr,last Test%1%_dst_start,MemSize)]  Test%1%_flags_start \<sigma>)) 
   = (let'
         end_regs = concat [(zip (tuple_to_list src) Test%1%_src_end), Test%1%_xtra_regs_end]
      in State end_regs  [(addr,last Test%1%_dst_end,MemSize)]  Test%1%_flags_end \<sigma>)"
proof-
  have "master blocks (addr,MemSize) MemoryBlockID"
    by  (find_master assms: assms)+
  note masters = this
  show ?thesis
    apply (insert masters)
    by (rewrite_one_let'_and_simplify)+
qed
