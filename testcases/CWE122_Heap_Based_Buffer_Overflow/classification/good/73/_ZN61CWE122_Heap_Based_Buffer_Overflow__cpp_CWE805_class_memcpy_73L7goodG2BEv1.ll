@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_da44:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_ecba:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_fab9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %1, ptr %stack_var_-96, align 8
  %2 = bitcast ptr %stack_var_-96 to ptr
  %3 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %2)
  %4 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %2)
  %5 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %2)
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2ERKS4_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %6 = ptrtoint ptr %stack_var_-56 to i64
  %7 = call i64 @anon1(i64 %6)
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(ptr nonnull %stack_var_-88)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_fbb0, label %dec_label_pc_fbab

dec_label_pc_fbab:                                ; preds = %dec_label_pc_fab9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_fbb0

dec_label_pc_fbb0:                                ; preds = %dec_label_pc_fbab, %dec_label_pc_fab9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fbc6:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_fbe6:
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

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fc1c:
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fc3c:
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fc5c:
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fc7c:
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fc9c:
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fcc8:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fce8:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_fd14:
  %0 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_fd4e:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP12TwoIntsClassEES4_E17_S_select_on_copyERKS5_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_fe13, label %dec_label_pc_fe0e

dec_label_pc_fe0e:                                ; preds = %dec_label_pc_fd4e
  call void @__stack_chk_fail()
  br label %dec_label_pc_fe13

dec_label_pc_fe13:                                ; preds = %dec_label_pc_fe0e, %dec_label_pc_fd4e
  ret void
}

define void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fe1a:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fe3a:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_fec5:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_feca:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIP12TwoIntsClassEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_ff14, label %dec_label_pc_ff0f

dec_label_pc_ff0f:                                ; preds = %dec_label_pc_feca
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_ff14

dec_label_pc_ff14:                                ; preds = %dec_label_pc_ff0f, %dec_label_pc_feca
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_ff16:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP12TwoIntsClassEES4_E17_S_select_on_copyERKS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_ff77:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_ffc1, label %dec_label_pc_ffbc

dec_label_pc_ffbc:                                ; preds = %dec_label_pc_ff77
  call void @__stack_chk_fail()
  br label %dec_label_pc_ffc1

dec_label_pc_ffc1:                                ; preds = %dec_label_pc_ffbc, %dec_label_pc_ff77
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_ffc8:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_ffda:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_10012:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1005f, label %dec_label_pc_1005a

dec_label_pc_1005a:                               ; preds = %dec_label_pc_10012
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1005f

dec_label_pc_1005f:                               ; preds = %dec_label_pc_1005a, %dec_label_pc_10012
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_10062:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_100ac, label %dec_label_pc_100a7

dec_label_pc_100a7:                               ; preds = %dec_label_pc_10062
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_100ac

dec_label_pc_100ac:                               ; preds = %dec_label_pc_100a7, %dec_label_pc_10062
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_100ae:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIP12TwoIntsClassES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_100c8.lr.ph, label %dec_label_pc_10109

dec_label_pc_100c8.lr.ph:                         ; preds = %dec_label_pc_100ae
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_100c8

dec_label_pc_100c8:                               ; preds = %dec_label_pc_100c8.lr.ph, %dec_label_pc_100c8
  %5 = call i64 @_ZNKSt20_List_const_iteratorIP12TwoIntsClassEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIP12TwoIntsClassEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIP12TwoIntsClassES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_100c8, label %dec_label_pc_10109

dec_label_pc_10109:                               ; preds = %dec_label_pc_100c8, %dec_label_pc_100ae
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1010e:
  ret void
}

define i64 @_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_1011e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_10140:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIP12TwoIntsClassEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_101ac:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_101ca:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEC2ERS4_PS3_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_1028d, label %dec_label_pc_10288

dec_label_pc_10288:                               ; preds = %dec_label_pc_101ca
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1028d

dec_label_pc_1028d:                               ; preds = %dec_label_pc_10288, %dec_label_pc_101ca
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_10294:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_102be:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %arg1) local_unnamed_addr {
dec_label_pc_102eb:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_102fe:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_10340:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIP12TwoIntsClassES4_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_1035e:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIP12TwoIntsClassEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_10384:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIP12TwoIntsClassEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_103a8:
  %0 = call i64 @_ZNKSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_103ca:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_10422:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE10deallocateERS4_PS3_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_10453:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE10deallocateEPS4_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_10486:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE8allocateERS4_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEC2ERS4_PS3_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_104aa:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIP12TwoIntsClassEEEPT_RS5_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_104e4:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_10520, label %dec_label_pc_10501

dec_label_pc_10501:                               ; preds = %dec_label_pc_104e4
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE10deallocateERS4_PS3_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_10520

dec_label_pc_10520:                               ; preds = %dec_label_pc_10501, %dec_label_pc_104e4
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_10523:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_10560:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_10582:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2ERKS5_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_105ac:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_105ce:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIP12TwoIntsClassEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIP12TwoIntsClassEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_10629, label %dec_label_pc_10624

dec_label_pc_10624:                               ; preds = %dec_label_pc_105ce
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_10629

dec_label_pc_10629:                               ; preds = %dec_label_pc_10624, %dec_label_pc_105ce
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_1062c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE10deallocateEPS4_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1063e:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE8allocateERS4_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_1067b:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIP12TwoIntsClassEEEPT_RS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_106a9:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_106bc:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2ERKS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_10700:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_10714:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIP12TwoIntsClassEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_10732:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIP12TwoIntsClassEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_10756:
  %0 = call i64 @_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_10778:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_10790:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_107e2, label %dec_label_pc_107c8

dec_label_pc_107c8:                               ; preds = %dec_label_pc_10790
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_107dd, label %dec_label_pc_107d8

dec_label_pc_107d8:                               ; preds = %dec_label_pc_107c8
  %7 = call i64 @anon2()
  br label %dec_label_pc_107dd

dec_label_pc_107dd:                               ; preds = %dec_label_pc_107d8, %dec_label_pc_107c8
  %8 = call i64 @anon3()
  br label %dec_label_pc_107e2

dec_label_pc_107e2:                               ; preds = %dec_label_pc_107dd, %dec_label_pc_10790
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_107fe:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_108ef:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE4backEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1093a

dec_label_pc_1093a:                               ; preds = %dec_label_pc_1093a, %dec_label_pc_108ef
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 8
  %7 = add i64 %6, %0
  %8 = add i64 %7, -816
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %7, -812
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_10970, label %dec_label_pc_1093a

dec_label_pc_10970:                               ; preds = %dec_label_pc_1093a
  %13 = inttoptr i64 %5 to ptr
  %14 = call ptr @memcpy(ptr %13, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %15 = inttoptr i64 %5 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %17 = icmp eq i64 %5, 0
  br i1 %17, label %dec_label_pc_109b7, label %dec_label_pc_109a8

dec_label_pc_109a8:                               ; preds = %dec_label_pc_10970
  %18 = ptrtoint ptr %stack_var_-824 to i64
  %19 = and i64 %18, 4294967288
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %13, ptr %20)
  br label %dec_label_pc_109b7

dec_label_pc_109b7:                               ; preds = %dec_label_pc_109a8, %dec_label_pc_10970
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_109cc, label %dec_label_pc_109c7

dec_label_pc_109c7:                               ; preds = %dec_label_pc_109b7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_109cc

dec_label_pc_109cc:                               ; preds = %dec_label_pc_109c7, %dec_label_pc_109b7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

