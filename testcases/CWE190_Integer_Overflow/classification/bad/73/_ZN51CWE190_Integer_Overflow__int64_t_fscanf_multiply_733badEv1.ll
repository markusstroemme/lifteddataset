@global_var_7672e = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3ccfd:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3ed46:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_3ed66:
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

define ptr @_ZSt7forwardIRKlEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_53786:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_54678:
  call void @_ZNSaISt10_List_nodeIlEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_54698:
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIlSaIlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_546b8:
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIlSaIlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_546d8:
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_546f8:
  call void @_ZNSaISt10_List_nodeIlEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_54724:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_54744:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIlSaIlEE9push_backERKl(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_54770:
  %0 = call i64 @_ZNSt7__cxx114listIlSaIlEE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIlSaIlEE9_M_insertIJRKlEEEvSt14_List_iteratorIlEDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIlSaIlEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_547aa:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIlSaIlEE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIlEES2_E17_S_select_on_copyERKS3_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEEC2EOSaISt10_List_nodeIlEE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIlEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIlSaIlEE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIlSaIlEE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIlSaIlEE22_M_initialize_dispatchISt20_List_const_iteratorIlEEEvT_S6_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_5486f, label %dec_label_pc_5486a

dec_label_pc_5486a:                               ; preds = %dec_label_pc_547aa
  call void @__stack_chk_fail()
  br label %dec_label_pc_5486f

dec_label_pc_5486f:                               ; preds = %dec_label_pc_5486a, %dec_label_pc_547aa
  ret void
}

define void @_ZNSaISt10_List_nodeIlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_54876:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_54896:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_54921:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIlSaIlEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_54926:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIlEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_54970, label %dec_label_pc_5496b

dec_label_pc_5496b:                               ; preds = %dec_label_pc_54926
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_54970

dec_label_pc_54970:                               ; preds = %dec_label_pc_5496b, %dec_label_pc_54926
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIlSaIlEE9_M_insertIJRKlEEEvSt14_List_iteratorIlEDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_54972:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKlEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIlSaIlEE14_M_create_nodeIJRKlEEEPSt10_List_nodeIlEDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIlEES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_549d3:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_54a1d, label %dec_label_pc_54a18

dec_label_pc_54a18:                               ; preds = %dec_label_pc_549d3
  call void @__stack_chk_fail()
  br label %dec_label_pc_54a1d

dec_label_pc_54a1d:                               ; preds = %dec_label_pc_54a18, %dec_label_pc_549d3
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIlSaIlEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_54a24:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEEC2EOSaISt10_List_nodeIlEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_54a36:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIlEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implC2EOSaISt10_List_nodeIlEE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIlSaIlEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_54a6e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIlEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_54abb, label %dec_label_pc_54ab6

dec_label_pc_54ab6:                               ; preds = %dec_label_pc_54a6e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_54abb

dec_label_pc_54abb:                               ; preds = %dec_label_pc_54ab6, %dec_label_pc_54a6e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIlSaIlEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_54abe:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIlEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_54b08, label %dec_label_pc_54b03

dec_label_pc_54b03:                               ; preds = %dec_label_pc_54abe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_54b08

dec_label_pc_54b08:                               ; preds = %dec_label_pc_54b03, %dec_label_pc_54abe
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIlSaIlEE22_M_initialize_dispatchISt20_List_const_iteratorIlEEEvT_S6_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_54b0a:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIlES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_54b24.lr.ph, label %dec_label_pc_54b65

dec_label_pc_54b24.lr.ph:                         ; preds = %dec_label_pc_54b0a
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_54b24

dec_label_pc_54b24:                               ; preds = %dec_label_pc_54b24.lr.ph, %dec_label_pc_54b24
  %5 = call i64 @_ZNKSt20_List_const_iteratorIlEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIlSaIlEE12emplace_backIJRKlEEERlDpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIlEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIlES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_54b24, label %dec_label_pc_54b65

dec_label_pc_54b65:                               ; preds = %dec_label_pc_54b24, %dec_label_pc_54b0a
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_54b6a:
  ret void
}

define i64 @_ZNSt10_List_nodeIlE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_54b7a:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIlE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_54b9c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIlEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_54c08:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIlSaIlEE14_M_create_nodeIJRKlEEEPSt10_List_nodeIlEDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_54c26:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIlEEEC2ERS2_PS1_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKlEOT_RNSt16remove_referenceIS2_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIlE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE9constructIlJRKlEEEvRS2_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIlEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIlEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_54ce9, label %dec_label_pc_54ce4

dec_label_pc_54ce4:                               ; preds = %dec_label_pc_54c26
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_54ce9

dec_label_pc_54ce9:                               ; preds = %dec_label_pc_54ce4, %dec_label_pc_54c26
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_54cf0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_54d1a:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIlEEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIlEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_54d47:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implC2EOSaISt10_List_nodeIlEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_54d5a:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIlEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSaISt10_List_nodeIlEEC2ERKS1_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIlEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_54d9c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIlES2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_54dba:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIlEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_54de0:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIlEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_54e04:
  %0 = call i64 @_ZNKSt10_List_nodeIlE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIlSaIlEE12emplace_backIJRKlEEERlDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_54e26:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKlEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIlSaIlEE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIlSaIlEE9_M_insertIJRKlEEEvSt14_List_iteratorIlEDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIlSaIlEE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIlE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_54e7e:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIlE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_54eaf:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_54ee2:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE8allocateERS2_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIlEEEC2ERS2_PS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_54f06:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIlEEEPT_RS3_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIlEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_54f40:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_54f7c, label %dec_label_pc_54f5d

dec_label_pc_54f5d:                               ; preds = %dec_label_pc_54f40
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE10deallocateERS2_PS1_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_54f7c

dec_label_pc_54f7c:                               ; preds = %dec_label_pc_54f5d, %dec_label_pc_54f40
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE9constructIlJRKlEEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_54f7f:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKlEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE9constructIlJRKlEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIlEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_54fbc:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIlEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_54fde:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIlE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_55008:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIlE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIlSaIlEE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_5502a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIlSaIlEE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIlEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIlEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_55085, label %dec_label_pc_55080

dec_label_pc_55080:                               ; preds = %dec_label_pc_5502a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_55085

dec_label_pc_55085:                               ; preds = %dec_label_pc_55080, %dec_label_pc_5502a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIlE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_55088:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5509a:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_550d7:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIlEEEPT_RS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_55105:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE9constructIlJRKlEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_55118:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKlEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5515c:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIlE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_55170:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIlE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIlEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_5518e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIlEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_551b2:
  %0 = call i64 @_ZNSt10_List_nodeIlE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIlEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_551d4:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_551ec:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIlEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_5523e, label %dec_label_pc_55224

dec_label_pc_55224:                               ; preds = %dec_label_pc_551ec
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_55239, label %dec_label_pc_55234

dec_label_pc_55234:                               ; preds = %dec_label_pc_55224
  %7 = call i64 @anon2()
  br label %dec_label_pc_55239

dec_label_pc_55239:                               ; preds = %dec_label_pc_55234, %dec_label_pc_55224
  %8 = call i64 @anon3()
  br label %dec_label_pc_5523e

dec_label_pc_5523e:                               ; preds = %dec_label_pc_55239, %dec_label_pc_551ec
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIlE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_5525a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_58b42:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIlSaIlEEC2Ev(ptr nonnull %stack_var_-88)
  store i64 0, ptr %stack_var_-96, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_7672e, ptr nonnull %stack_var_-96)
  %3 = bitcast ptr %stack_var_-96 to ptr
  %4 = call i64 @_ZNSt7__cxx114listIlSaIlEE9push_backERKl(ptr nonnull %stack_var_-88, ptr nonnull %3)
  %5 = call i64 @_ZNSt7__cxx114listIlSaIlEE9push_backERKl(ptr nonnull %stack_var_-88, ptr nonnull %3)
  %6 = call i64 @_ZNSt7__cxx114listIlSaIlEE9push_backERKl(ptr nonnull %stack_var_-88, ptr nonnull %3)
  call void @_ZNSt7__cxx114listIlSaIlEEC2ERKS2_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %7 = ptrtoint ptr %stack_var_-56 to i64
  %8 = call i64 @anon1(i64 %7)
  call void @_ZNSt7__cxx114listIlSaIlEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIlSaIlEED2Ev(ptr nonnull %stack_var_-88)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_58c4d, label %dec_label_pc_58c48

dec_label_pc_58c48:                               ; preds = %dec_label_pc_58b42
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_58c4d

dec_label_pc_58c4d:                               ; preds = %dec_label_pc_58c48, %dec_label_pc_58b42
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_58e70:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIlSaIlEE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp slt i64 %3, 1
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_58eb1, label %dec_label_pc_58e9a

dec_label_pc_58e9a:                               ; preds = %dec_label_pc_58e70
  %5 = mul i64 %3, 2
  call void @printLongLongLine(i64 %5)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_58eb1

dec_label_pc_58eb1:                               ; preds = %dec_label_pc_58e9a, %dec_label_pc_58e70
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

