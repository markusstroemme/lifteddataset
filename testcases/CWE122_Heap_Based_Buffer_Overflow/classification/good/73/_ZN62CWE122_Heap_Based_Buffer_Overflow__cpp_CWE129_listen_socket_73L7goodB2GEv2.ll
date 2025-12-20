@global_var_aef38 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_1e307:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_1f57e:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20840:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_20860:
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

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20896:
  call void @_ZNSaISt10_List_nodeIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_208b6:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_208d6:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_208f6:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20916:
  call void @_ZNSaISt10_List_nodeIiEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20942:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20962:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_2098e:
  %0 = call i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_209c8:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEES2_E17_S_select_on_copyERKS3_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2EOSaISt10_List_nodeIiEE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIiEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIiSaIiEE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIiSaIiEE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_20a8d, label %dec_label_pc_20a88

dec_label_pc_20a88:                               ; preds = %dec_label_pc_209c8
  call void @__stack_chk_fail()
  br label %dec_label_pc_20a8d

dec_label_pc_20a8d:                               ; preds = %dec_label_pc_20a88, %dec_label_pc_209c8
  ret void
}

define void @_ZNSaISt10_List_nodeIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20a94:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20ab4:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_20b3f:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_20b44:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_20b8e, label %dec_label_pc_20b89

dec_label_pc_20b89:                               ; preds = %dec_label_pc_20b44
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20b8e

dec_label_pc_20b8e:                               ; preds = %dec_label_pc_20b89, %dec_label_pc_20b44
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_20b90:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20bf1:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_20c3b, label %dec_label_pc_20c36

dec_label_pc_20c36:                               ; preds = %dec_label_pc_20bf1
  call void @__stack_chk_fail()
  br label %dec_label_pc_20c3b

dec_label_pc_20c3b:                               ; preds = %dec_label_pc_20c36, %dec_label_pc_20bf1
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_20c42:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20c54:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIiSaIiEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_20c8c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_20cd9, label %dec_label_pc_20cd4

dec_label_pc_20cd4:                               ; preds = %dec_label_pc_20c8c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20cd9

dec_label_pc_20cd9:                               ; preds = %dec_label_pc_20cd4, %dec_label_pc_20c8c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_20cdc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_20d26, label %dec_label_pc_20d21

dec_label_pc_20d21:                               ; preds = %dec_label_pc_20cdc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20d26

dec_label_pc_20d26:                               ; preds = %dec_label_pc_20d21, %dec_label_pc_20cdc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_20d28:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_20d42.lr.ph, label %dec_label_pc_20d83

dec_label_pc_20d42.lr.ph:                         ; preds = %dec_label_pc_20d28
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_20d42

dec_label_pc_20d42:                               ; preds = %dec_label_pc_20d42.lr.ph, %dec_label_pc_20d42
  %5 = call i64 @_ZNKSt20_List_const_iteratorIiEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIiSaIiEE12emplace_backIJRKiEEERiDpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIiEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_20d42, label %dec_label_pc_20d83

dec_label_pc_20d83:                               ; preds = %dec_label_pc_20d42, %dec_label_pc_20d28
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20d88:
  ret void
}

define i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_20d98:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_20dba:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20e26:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_20e44:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_20f07, label %dec_label_pc_20f02

dec_label_pc_20f02:                               ; preds = %dec_label_pc_20e44
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20f07

dec_label_pc_20f07:                               ; preds = %dec_label_pc_20f02, %dec_label_pc_20e44
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_20f0e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20f38:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_20f65:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20f78:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20fba:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_20fd8:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIiEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_20ffe:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_21022:
  %0 = call i64 @_ZNKSt10_List_nodeIiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIiSaIiEE12emplace_backIJRKiEEERiDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_21044:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_2109c:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_210cd:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_21100:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_21124:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_2115e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_2119a, label %dec_label_pc_2117b

dec_label_pc_2117b:                               ; preds = %dec_label_pc_2115e
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_2119a

dec_label_pc_2119a:                               ; preds = %dec_label_pc_2117b, %dec_label_pc_2115e
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_2119d:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_211da:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_211fc:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_21226:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_21248:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIiEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIiEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_212a3, label %dec_label_pc_2129e

dec_label_pc_2129e:                               ; preds = %dec_label_pc_21248
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_212a3

dec_label_pc_212a3:                               ; preds = %dec_label_pc_2129e, %dec_label_pc_21248
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_212a6:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_212b8:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_212f5:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_21323:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_21336:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = bitcast ptr %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 4, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i32 %3, ptr %6, align 4
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_21378:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_2138c:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIiEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_213aa:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_213ce:
  %0 = call i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_213f0:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_21408:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_2145a, label %dec_label_pc_21440

dec_label_pc_21440:                               ; preds = %dec_label_pc_21408
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_21455, label %dec_label_pc_21450

dec_label_pc_21450:                               ; preds = %dec_label_pc_21440
  %7 = call i64 @anon2()
  br label %dec_label_pc_21455

dec_label_pc_21455:                               ; preds = %dec_label_pc_21450, %dec_label_pc_21440
  %8 = call i64 @anon3()
  br label %dec_label_pc_2145a

dec_label_pc_2145a:                               ; preds = %dec_label_pc_21455, %dec_label_pc_21408
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_21476:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5e399:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %stack_var_-46 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %stack_var_-152 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIiSaIiEEC2Ev(ptr nonnull %stack_var_-136)
  store i64 -1, ptr %stack_var_-152, align 8
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_5e531, label %dec_label_pc_5e409

dec_label_pc_5e409:                               ; preds = %dec_label_pc_5e399
  %3 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_5e51b.thread4, label %dec_label_pc_5e461

dec_label_pc_5e461:                               ; preds = %dec_label_pc_5e409
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_5e51b.thread4, label %dec_label_pc_5e481

dec_label_pc_5e481:                               ; preds = %dec_label_pc_5e461
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_5e51b.thread4, label %dec_label_pc_5e4a7

dec_label_pc_5e4a7:                               ; preds = %dec_label_pc_5e481
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-46, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %dec_label_pc_5e524, label %dec_label_pc_5e4da

dec_label_pc_5e4da:                               ; preds = %dec_label_pc_5e4a7
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -38
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-46 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  %26 = sext i32 %25 to i64
  store i64 %26, ptr %stack_var_-152, align 8
  br label %dec_label_pc_5e524

dec_label_pc_5e51b.thread4:                       ; preds = %dec_label_pc_5e481, %dec_label_pc_5e461, %dec_label_pc_5e409
  %27 = call i32 @close(i32 %1)
  br label %dec_label_pc_5e531

dec_label_pc_5e524:                               ; preds = %dec_label_pc_5e4da, %dec_label_pc_5e4a7
  %28 = call i32 @close(i32 %1)
  %29 = call i32 @close(i32 %14)
  br label %dec_label_pc_5e531

dec_label_pc_5e531:                               ; preds = %dec_label_pc_5e399, %dec_label_pc_5e51b.thread4, %dec_label_pc_5e524
  %30 = bitcast ptr %stack_var_-152 to ptr
  %31 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-136, ptr nonnull %30)
  %32 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-136, ptr nonnull %30)
  %33 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-136, ptr nonnull %30)
  call void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr nonnull %stack_var_-104, ptr nonnull %stack_var_-136)
  %34 = ptrtoint ptr %stack_var_-104 to i64
  %35 = call i64 @anon1(i64 %34)
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr nonnull %stack_var_-104)
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr nonnull %stack_var_-136)
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %0, %36
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %37, label %dec_label_pc_5e5f3, label %dec_label_pc_5e5ee

dec_label_pc_5e5ee:                               ; preds = %dec_label_pc_5e531
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5e5f3

dec_label_pc_5e5f3:                               ; preds = %dec_label_pc_5e5ee, %dec_label_pc_5e531
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_5e7b4:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_5e7ec

dec_label_pc_5e7ec:                               ; preds = %dec_label_pc_5e7ec, %dec_label_pc_5e7b4
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_5e810, label %dec_label_pc_5e7ec

dec_label_pc_5e810:                               ; preds = %dec_label_pc_5e7ec
  %10 = icmp ugt i32 %5, 9
  br i1 %10, label %dec_label_pc_5e868, label %dec_label_pc_5e81c

dec_label_pc_5e81c:                               ; preds = %dec_label_pc_5e810
  %11 = sext i32 %5 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %12, %6
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5e83f

dec_label_pc_5e83f:                               ; preds = %dec_label_pc_5e83f, %dec_label_pc_5e81c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %6
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5e877, label %dec_label_pc_5e83f

dec_label_pc_5e868:                               ; preds = %dec_label_pc_5e810
  call void @printLine(ptr @global_var_aef38)
  br label %dec_label_pc_5e877

dec_label_pc_5e877:                               ; preds = %dec_label_pc_5e83f, %dec_label_pc_5e868
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %dec_label_pc_5e88a, label %dec_label_pc_5e87e

dec_label_pc_5e87e:                               ; preds = %dec_label_pc_5e877
  %20 = inttoptr i64 %6 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_5e88a

dec_label_pc_5e88a:                               ; preds = %dec_label_pc_5e87e, %dec_label_pc_5e877
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

