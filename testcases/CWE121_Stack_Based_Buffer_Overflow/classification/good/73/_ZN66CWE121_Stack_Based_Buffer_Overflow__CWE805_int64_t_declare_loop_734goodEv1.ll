@global_var_bb9b5 = external constant [5 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_73568:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_756bc:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_756dc:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 %0, ptr %2, align 8
  store i64 %0, ptr %result, align 8
  %3 = add i64 %0, 16
  %4 = inttoptr i64 %3 to ptr
  store i64 0, ptr %4, align 8
  ret i64 %0
}

define ptr @_ZSt7forwardIRKPlEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_7a8d6:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7b948:
  call void @_ZNSaISt10_List_nodeIPlEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7b968:
  call void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPlSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7b988:
  call void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPlSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7b9a8:
  call void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7b9c8:
  call void @_ZNSaISt10_List_nodeIPlEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIPlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7b9f4:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7ba14:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIPlSaIS1_EE9push_backERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7ba40:
  %0 = call i64 @_ZNSt7__cxx114listIPlSaIS1_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIPlSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIPlSaIS1_EEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7ba7a:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIPlSaIS1_EE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPlEES3_E17_S_select_on_copyERKS4_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIPlEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIPlSaIS1_EE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIPlSaIS1_EE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIPlSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_7bb3f, label %dec_label_pc_7bb3a

dec_label_pc_7bb3a:                               ; preds = %dec_label_pc_7ba7a
  call void @__stack_chk_fail()
  br label %dec_label_pc_7bb3f

dec_label_pc_7bb3f:                               ; preds = %dec_label_pc_7bb3a, %dec_label_pc_7ba7a
  ret void
}

define void @_ZNSaISt10_List_nodeIPlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7bb46:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7bb66:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_7bbf1:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIPlSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_7bbf6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIPlEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7bc40, label %dec_label_pc_7bc3b

dec_label_pc_7bc3b:                               ; preds = %dec_label_pc_7bbf6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7bc40

dec_label_pc_7bc40:                               ; preds = %dec_label_pc_7bc3b, %dec_label_pc_7bbf6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPlSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7bc42:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPlEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIPlSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPlEES3_E17_S_select_on_copyERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7bca3:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPlEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_7bced, label %dec_label_pc_7bce8

dec_label_pc_7bce8:                               ; preds = %dec_label_pc_7bca3
  call void @__stack_chk_fail()
  br label %dec_label_pc_7bced

dec_label_pc_7bced:                               ; preds = %dec_label_pc_7bce8, %dec_label_pc_7bca3
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIPlSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_7bcf4:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7bd06:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPlEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIPlSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_7bd3e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPlEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7bd8b, label %dec_label_pc_7bd86

dec_label_pc_7bd86:                               ; preds = %dec_label_pc_7bd3e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7bd8b

dec_label_pc_7bd8b:                               ; preds = %dec_label_pc_7bd86, %dec_label_pc_7bd3e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIPlSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_7bd8e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPlEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7bdd8, label %dec_label_pc_7bdd3

dec_label_pc_7bdd3:                               ; preds = %dec_label_pc_7bd8e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7bdd8

dec_label_pc_7bdd8:                               ; preds = %dec_label_pc_7bdd3, %dec_label_pc_7bd8e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPlSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7bdda:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIPlES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_7bdf4.lr.ph, label %dec_label_pc_7be35

dec_label_pc_7bdf4.lr.ph:                         ; preds = %dec_label_pc_7bdda
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_7bdf4

dec_label_pc_7bdf4:                               ; preds = %dec_label_pc_7bdf4.lr.ph, %dec_label_pc_7bdf4
  %5 = call i64 @_ZNKSt20_List_const_iteratorIPlEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIPlSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIPlEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIPlES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_7bdf4, label %dec_label_pc_7be35

dec_label_pc_7be35:                               ; preds = %dec_label_pc_7bdf4, %dec_label_pc_7bdda
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7be3a:
  ret void
}

define i64 @_ZNSt10_List_nodeIPlE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7be4a:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPlE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_7be6c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIPlEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7bed8:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIPlSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7bef6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPlEEEC2ERS3_PS2_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKPlEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIPlE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIPlEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPlEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPlEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_7bfb9, label %dec_label_pc_7bfb4

dec_label_pc_7bfb4:                               ; preds = %dec_label_pc_7bef6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7bfb9

dec_label_pc_7bfb9:                               ; preds = %dec_label_pc_7bfb4, %dec_label_pc_7bef6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7bfc0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPlEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7bfea:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIPlEEC2ERKS2_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIPlEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7c017:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7c02a:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPlEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSaISt10_List_nodeIPlEEC2ERKS2_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIPlEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7c06c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIPlES3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7c08a:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIPlEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c0b0:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIPlEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c0d4:
  %0 = call i64 @_ZNKSt10_List_nodeIPlE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIPlSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7c0f6:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKPlEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIPlSaIS1_EE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIPlSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIPlSaIS1_EE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPlE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c14e:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPlE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPlEEE10deallocateERS3_PS2_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7c17f:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEE10deallocateEPS3_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIPlSaIS1_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c1b2:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPlEEE8allocateERS3_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPlEEEC2ERS3_PS2_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7c1d6:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIPlEEEPT_RS4_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPlEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7c210:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_7c24c, label %dec_label_pc_7c22d

dec_label_pc_7c22d:                               ; preds = %dec_label_pc_7c210
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPlEEE10deallocateERS3_PS2_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_7c24c

dec_label_pc_7c24c:                               ; preds = %dec_label_pc_7c22d, %dec_label_pc_7c210
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIPlEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7c24f:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPlEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPlEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7c28c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIPlEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7c2ae:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEEC2ERKS4_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIPlE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c2d8:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPlE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIPlSaIS1_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c2fa:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIPlSaIS1_EE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIPlEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIPlEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_7c355, label %dec_label_pc_7c350

dec_label_pc_7c350:                               ; preds = %dec_label_pc_7c2fa
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7c355

dec_label_pc_7c355:                               ; preds = %dec_label_pc_7c350, %dec_label_pc_7c2fa
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPlE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c358:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEE10deallocateEPS3_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7c36a:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPlEEE8allocateERS3_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_7c3a7:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIPlEEEPT_RS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7c3d5:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7c3e8:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPlEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7c42c:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPlE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c440:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPlE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIPlEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c45e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIPlEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c482:
  %0 = call i64 @_ZNSt10_List_nodeIPlE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPlEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c4a4:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPlEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7c4bc:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPlEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_7c50e, label %dec_label_pc_7c4f4

dec_label_pc_7c4f4:                               ; preds = %dec_label_pc_7c4bc
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_7c509, label %dec_label_pc_7c504

dec_label_pc_7c504:                               ; preds = %dec_label_pc_7c4f4
  %7 = call i64 @anon2()
  br label %dec_label_pc_7c509

dec_label_pc_7c509:                               ; preds = %dec_label_pc_7c504, %dec_label_pc_7c4f4
  %8 = call i64 @anon3()
  br label %dec_label_pc_7c50e

dec_label_pc_7c50e:                               ; preds = %dec_label_pc_7c509, %dec_label_pc_7c4bc
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPlE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7c52a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_83641:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-872 = alloca i64, align 8
  %stack_var_-912 = alloca i64, align 8
  %stack_var_-840 = alloca i64, align 8
  %stack_var_-904 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIPlSaIS1_EEC2Ev(ptr nonnull %stack_var_-904)
  %1 = ptrtoint ptr %stack_var_-840 to i64
  store i64 %1, ptr %stack_var_-912, align 8
  %2 = bitcast ptr %stack_var_-912 to ptr
  %3 = call i64 @_ZNSt7__cxx114listIPlSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-904, ptr nonnull %2)
  %4 = call i64 @_ZNSt7__cxx114listIPlSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-904, ptr nonnull %2)
  %5 = call i64 @_ZNSt7__cxx114listIPlSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-904, ptr nonnull %2)
  call void @_ZNSt7__cxx114listIPlSaIS1_EEC2ERKS3_(ptr nonnull %stack_var_-872, ptr nonnull %stack_var_-904)
  %6 = ptrtoint ptr %stack_var_-872 to i64
  %7 = call i64 @anon1(i64 %6)
  call void @_ZNSt7__cxx114listIPlSaIS1_EED2Ev(ptr nonnull %stack_var_-872)
  call void @_ZNSt7__cxx114listIPlSaIS1_EED2Ev(ptr nonnull %stack_var_-904)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_8375d, label %dec_label_pc_83758

dec_label_pc_83758:                               ; preds = %dec_label_pc_83641
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8375d

dec_label_pc_8375d:                               ; preds = %dec_label_pc_83758, %dec_label_pc_83641
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_8383b:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call i64 @_ZNSt7__cxx114listIPlSaIS1_EE4backEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = add i64 %0, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_8389d

dec_label_pc_8389d:                               ; preds = %dec_label_pc_8389d, %dec_label_pc_8383b
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %8 = mul i64 %storemerge1.reload, 8
  %9 = add i64 %8, %5
  %10 = add i64 %7, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %9 to ptr
  store i64 %12, ptr %13, align 8
  %14 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_838da, label %dec_label_pc_8389d

dec_label_pc_838da:                               ; preds = %dec_label_pc_8389d
  %15 = inttoptr i64 %5 to ptr
  %16 = load i64, ptr %15, align 8
  call void @printLongLongLine(i64 %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_83901, label %dec_label_pc_838fc

dec_label_pc_838fc:                               ; preds = %dec_label_pc_838da
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_83901

dec_label_pc_83901:                               ; preds = %dec_label_pc_838fc, %dec_label_pc_838da
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

