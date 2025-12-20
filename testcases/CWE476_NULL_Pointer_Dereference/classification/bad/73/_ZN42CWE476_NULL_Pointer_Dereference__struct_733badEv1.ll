@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_1b861:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1d9c4:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d9e4:
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

define ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_38a36:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_395d0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2Ev(ptr nonnull %stack_var_-88)
  store i64 0, ptr %stack_var_-96, align 8
  %1 = bitcast ptr %stack_var_-96 to ptr
  %2 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %1)
  %3 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %1)
  %4 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %1)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2ERKS4_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %5 = ptrtoint ptr %stack_var_-56 to i64
  %6 = call i64 @anon1(i64 %5)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EED2Ev(ptr nonnull %stack_var_-88)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_396b9, label %dec_label_pc_396b4

dec_label_pc_396b4:                               ; preds = %dec_label_pc_395d0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_396b9

dec_label_pc_396b9:                               ; preds = %dec_label_pc_396b4, %dec_label_pc_395d0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_398c0:
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_398e0:
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_39900:
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_39920:
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_39940:
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3996c:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3998c:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_399b8:
  %0 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_399f2:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP14_twoIntsStructEES4_E17_S_select_on_copyERKS5_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_39ab7, label %dec_label_pc_39ab2

dec_label_pc_39ab2:                               ; preds = %dec_label_pc_399f2
  call void @__stack_chk_fail()
  br label %dec_label_pc_39ab7

dec_label_pc_39ab7:                               ; preds = %dec_label_pc_39ab2, %dec_label_pc_399f2
  ret void
}

define void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_39abe:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_39ade:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_39b69:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_39b6e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIP14_twoIntsStructEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_39bb8, label %dec_label_pc_39bb3

dec_label_pc_39bb3:                               ; preds = %dec_label_pc_39b6e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39bb8

dec_label_pc_39bb8:                               ; preds = %dec_label_pc_39bb3, %dec_label_pc_39b6e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_39bba:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP14_twoIntsStructEES4_E17_S_select_on_copyERKS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_39c1b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_39c65, label %dec_label_pc_39c60

dec_label_pc_39c60:                               ; preds = %dec_label_pc_39c1b
  call void @__stack_chk_fail()
  br label %dec_label_pc_39c65

dec_label_pc_39c65:                               ; preds = %dec_label_pc_39c60, %dec_label_pc_39c1b
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_39c6c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_39c7e:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP14_twoIntsStructEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_39cb6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP14_twoIntsStructEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_39d03, label %dec_label_pc_39cfe

dec_label_pc_39cfe:                               ; preds = %dec_label_pc_39cb6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39d03

dec_label_pc_39d03:                               ; preds = %dec_label_pc_39cfe, %dec_label_pc_39cb6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_39d06:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP14_twoIntsStructEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_39d50, label %dec_label_pc_39d4b

dec_label_pc_39d4b:                               ; preds = %dec_label_pc_39d06
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39d50

dec_label_pc_39d50:                               ; preds = %dec_label_pc_39d4b, %dec_label_pc_39d06
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_39d52:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIP14_twoIntsStructES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_39d6c.lr.ph, label %dec_label_pc_39dad

dec_label_pc_39d6c.lr.ph:                         ; preds = %dec_label_pc_39d52
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_39d6c

dec_label_pc_39d6c:                               ; preds = %dec_label_pc_39d6c.lr.ph, %dec_label_pc_39d6c
  %5 = call i64 @_ZNKSt20_List_const_iteratorIP14_twoIntsStructEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIP14_twoIntsStructEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIP14_twoIntsStructES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_39d6c, label %dec_label_pc_39dad

dec_label_pc_39dad:                               ; preds = %dec_label_pc_39d6c, %dec_label_pc_39d52
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_39db2:
  ret void
}

define i64 @_ZNSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_39dc2:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_39de4:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIP14_twoIntsStructEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_39e50:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_39e6e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEC2ERS4_PS3_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_39f31, label %dec_label_pc_39f2c

dec_label_pc_39f2c:                               ; preds = %dec_label_pc_39e6e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39f31

dec_label_pc_39f31:                               ; preds = %dec_label_pc_39f2c, %dec_label_pc_39e6e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_39f38:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_39f62:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2ERKS3_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIP14_twoIntsStructEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %arg1) local_unnamed_addr {
dec_label_pc_39f8f:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_39fa2:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP14_twoIntsStructEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2ERKS3_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIP14_twoIntsStructEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_39fe4:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIP14_twoIntsStructES4_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3a002:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIP14_twoIntsStructEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a028:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIP14_twoIntsStructEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a04c:
  %0 = call i64 @_ZNKSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3a06e:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a0c6:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE10deallocateERS4_PS3_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3a0f7:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE10deallocateEPS4_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a12a:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE8allocateERS4_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEC2ERS4_PS3_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3a14e:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIP14_twoIntsStructEEEPT_RS5_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3a188:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_3a1c4, label %dec_label_pc_3a1a5

dec_label_pc_3a1a5:                               ; preds = %dec_label_pc_3a188
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE10deallocateERS4_PS3_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_3a1c4

dec_label_pc_3a1c4:                               ; preds = %dec_label_pc_3a1a5, %dec_label_pc_3a188
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3a1c7:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3a204:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3a226:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2ERKS5_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a250:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a272:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIP14_twoIntsStructEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIP14_twoIntsStructEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3a2cd, label %dec_label_pc_3a2c8

dec_label_pc_3a2c8:                               ; preds = %dec_label_pc_3a272
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3a2cd

dec_label_pc_3a2cd:                               ; preds = %dec_label_pc_3a2c8, %dec_label_pc_3a272
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a2d0:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE10deallocateEPS4_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3a2e2:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE8allocateERS4_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_3a31f:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIP14_twoIntsStructEEEPT_RS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3a34d:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3a360:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2ERKS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3a3a4:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a3b8:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIP14_twoIntsStructEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a3d6:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIP14_twoIntsStructEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a3fa:
  %0 = call i64 @_ZNSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a41c:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3a434:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_3a486, label %dec_label_pc_3a46c

dec_label_pc_3a46c:                               ; preds = %dec_label_pc_3a434
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_3a481, label %dec_label_pc_3a47c

dec_label_pc_3a47c:                               ; preds = %dec_label_pc_3a46c
  %7 = call i64 @anon2()
  br label %dec_label_pc_3a481

dec_label_pc_3a481:                               ; preds = %dec_label_pc_3a47c, %dec_label_pc_3a46c
  %8 = call i64 @anon3()
  br label %dec_label_pc_3a486

dec_label_pc_3a486:                               ; preds = %dec_label_pc_3a481, %dec_label_pc_3a434
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3a4a2:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_3a4b4:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  call void @printIntLine(i32 %5)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

