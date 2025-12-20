@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_d837:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_eaae:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_f7be:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIPcSaIS1_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call i64 @_Znam(i64 100)
  store i64 %1, ptr %stack_var_-96, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = add i64 %1, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %stack_var_-96 to ptr
  %7 = call i64 @_ZNSt7__cxx114listIPcSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %6)
  %8 = call i64 @_ZNSt7__cxx114listIPcSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %6)
  %9 = call i64 @_ZNSt7__cxx114listIPcSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %6)
  call void @_ZNSt7__cxx114listIPcSaIS1_EEC2ERKS3_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %10 = ptrtoint ptr %stack_var_-56 to i64
  %11 = call i64 @anon1(i64 %10)
  call void @_ZNSt7__cxx114listIPcSaIS1_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIPcSaIS1_EED2Ev(ptr nonnull %stack_var_-88)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_f8ce, label %dec_label_pc_f8c9

dec_label_pc_f8c9:                                ; preds = %dec_label_pc_f7be
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_f8ce

dec_label_pc_f8ce:                                ; preds = %dec_label_pc_f8c9, %dec_label_pc_f7be
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_f9fa:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_fa1a:
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

define void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fa50:
  call void @_ZNSaISt10_List_nodeIPcEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fa70:
  call void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPcSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fa90:
  call void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPcSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fab0:
  call void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fad0:
  call void @_ZNSaISt10_List_nodeIPcEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIPcEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fafc:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fb1c:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIPcSaIS1_EE9push_backERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_fb48:
  %0 = call i64 @_ZNSt7__cxx114listIPcSaIS1_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIPcSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIPcSaIS1_EEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_fb82:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIPcSaIS1_EE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPcEES3_E17_S_select_on_copyERKS4_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIPcEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIPcSaIS1_EE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIPcSaIS1_EE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIPcSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_fc47, label %dec_label_pc_fc42

dec_label_pc_fc42:                                ; preds = %dec_label_pc_fb82
  call void @__stack_chk_fail()
  br label %dec_label_pc_fc47

dec_label_pc_fc47:                                ; preds = %dec_label_pc_fc42, %dec_label_pc_fb82
  ret void
}

define void @_ZNSaISt10_List_nodeIPcEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fc4e:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fc6e:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_fcf9:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIPcSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_fcfe:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIPcEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_fd48, label %dec_label_pc_fd43

dec_label_pc_fd43:                                ; preds = %dec_label_pc_fcfe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_fd48

dec_label_pc_fd48:                                ; preds = %dec_label_pc_fd43, %dec_label_pc_fcfe
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPcSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_fd4a:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIPcSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPcEES3_E17_S_select_on_copyERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_fdab:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPcEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_fdf5, label %dec_label_pc_fdf0

dec_label_pc_fdf0:                                ; preds = %dec_label_pc_fdab
  call void @__stack_chk_fail()
  br label %dec_label_pc_fdf5

dec_label_pc_fdf5:                                ; preds = %dec_label_pc_fdf0, %dec_label_pc_fdab
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIPcSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_fdfc:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_fe0e:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPcEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIPcSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_fe46:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPcEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_fe93, label %dec_label_pc_fe8e

dec_label_pc_fe8e:                                ; preds = %dec_label_pc_fe46
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_fe93

dec_label_pc_fe93:                                ; preds = %dec_label_pc_fe8e, %dec_label_pc_fe46
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIPcSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_fe96:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPcEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_fee0, label %dec_label_pc_fedb

dec_label_pc_fedb:                                ; preds = %dec_label_pc_fe96
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_fee0

dec_label_pc_fee0:                                ; preds = %dec_label_pc_fedb, %dec_label_pc_fe96
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPcSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_fee2:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIPcES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_fefc.lr.ph, label %dec_label_pc_ff3d

dec_label_pc_fefc.lr.ph:                          ; preds = %dec_label_pc_fee2
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_fefc

dec_label_pc_fefc:                                ; preds = %dec_label_pc_fefc.lr.ph, %dec_label_pc_fefc
  %5 = call i64 @_ZNKSt20_List_const_iteratorIPcEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIPcSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIPcEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIPcES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_fefc, label %dec_label_pc_ff3d

dec_label_pc_ff3d:                                ; preds = %dec_label_pc_fefc, %dec_label_pc_fee2
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_ff42:
  ret void
}

define i64 @_ZNSt10_List_nodeIPcE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_ff52:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPcE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_ff74:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIPcEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_ffe0:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIPcSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_fffe:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPcEEEC2ERS3_PS2_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIPcE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIPcEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPcEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPcEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_100c1, label %dec_label_pc_100bc

dec_label_pc_100bc:                               ; preds = %dec_label_pc_fffe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_100c1

dec_label_pc_100c1:                               ; preds = %dec_label_pc_100bc, %dec_label_pc_fffe
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_100c8:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPcEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_100f2:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIPcEEC2ERKS2_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIPcEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %arg1) local_unnamed_addr {
dec_label_pc_1011f:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_10132:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPcEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSaISt10_List_nodeIPcEEC2ERKS2_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIPcEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_10174:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIPcES3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_10192:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIPcEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_101b8:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIPcEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_101dc:
  %0 = call i64 @_ZNKSt10_List_nodeIPcE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIPcSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_101fe:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIPcSaIS1_EE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIPcSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIPcSaIS1_EE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPcE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_10256:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPcE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPcEEE10deallocateERS3_PS2_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_10287:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEE10deallocateEPS3_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIPcSaIS1_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_102ba:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPcEEE8allocateERS3_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPcEEEC2ERS3_PS2_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_102de:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIPcEEEPT_RS4_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPcEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_10318:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_10354, label %dec_label_pc_10335

dec_label_pc_10335:                               ; preds = %dec_label_pc_10318
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPcEEE10deallocateERS3_PS2_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_10354

dec_label_pc_10354:                               ; preds = %dec_label_pc_10335, %dec_label_pc_10318
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIPcEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_10357:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPcEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_10394:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIPcEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_103b6:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEEC2ERKS4_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIPcE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_103e0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPcE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIPcSaIS1_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_10402:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIPcSaIS1_EE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIPcEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIPcEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1045d, label %dec_label_pc_10458

dec_label_pc_10458:                               ; preds = %dec_label_pc_10402
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1045d

dec_label_pc_1045d:                               ; preds = %dec_label_pc_10458, %dec_label_pc_10402
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPcE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_10460:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEE10deallocateEPS3_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_10472:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPcEEE8allocateERS3_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_104af:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIPcEEEPT_RS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_104dd:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_104f0:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_10534:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPcE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_10548:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPcE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIPcEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_10566:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIPcEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_1058a:
  %0 = call i64 @_ZNSt10_List_nodeIPcE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPcEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_105ac:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPcEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_105c4:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPcEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_10616, label %dec_label_pc_105fc

dec_label_pc_105fc:                               ; preds = %dec_label_pc_105c4
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_10611, label %dec_label_pc_1060c

dec_label_pc_1060c:                               ; preds = %dec_label_pc_105fc
  %7 = call i64 @anon2()
  br label %dec_label_pc_10611

dec_label_pc_10611:                               ; preds = %dec_label_pc_1060c, %dec_label_pc_105fc
  %8 = call i64 @anon3()
  br label %dec_label_pc_10616

dec_label_pc_10616:                               ; preds = %dec_label_pc_10611, %dec_label_pc_105c4
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPcE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_10632:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_10644:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = inttoptr i64 %arg1 to ptr
  %4 = call i64 @_ZNSt7__cxx114listIPcSaIS1_EE4backEv(ptr %3)
  %5 = inttoptr i64 %4 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = inttoptr i64 %6 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %8 = call i32 @strlen(ptr %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_106f0, label %dec_label_pc_106c6.lr.ph

dec_label_pc_106c6.lr.ph:                         ; preds = %dec_label_pc_10644
  %10 = sext i32 %8 to i64
  %11 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_106c6

dec_label_pc_106c6:                               ; preds = %dec_label_pc_106c6.lr.ph, %dec_label_pc_106c6
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = add i64 %storemerge2.reload, %6
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = add i64 %storemerge2.reload, %11
  %16 = inttoptr i64 %15 to ptr
  store i8 %14, ptr %16, align 1
  %17 = add nuw i64 %storemerge2.reload, 1
  %18 = icmp ult i64 %17, %10
  store i64 %17, ptr %storemerge2.reg2mem, align 8
  br i1 %18, label %dec_label_pc_106c6, label %dec_label_pc_106f0

dec_label_pc_106f0:                               ; preds = %dec_label_pc_106c6, %dec_label_pc_10644
  call void @printLine(ptr %7)
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %dec_label_pc_10713, label %dec_label_pc_10707

dec_label_pc_10707:                               ; preds = %dec_label_pc_106f0
  %20 = inttoptr i64 %6 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_10713

dec_label_pc_10713:                               ; preds = %dec_label_pc_10707, %dec_label_pc_106f0
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %2, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_10728, label %dec_label_pc_10723

dec_label_pc_10723:                               ; preds = %dec_label_pc_10713
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_10728

dec_label_pc_10728:                               ; preds = %dec_label_pc_10723, %dec_label_pc_10713
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

