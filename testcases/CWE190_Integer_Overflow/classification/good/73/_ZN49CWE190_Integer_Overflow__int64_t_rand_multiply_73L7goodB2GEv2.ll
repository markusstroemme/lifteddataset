@global_var_92c50 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_547fa:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define ptr @_ZSt7forwardIRKlEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_55a70:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_569d2:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_569f2:
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

define void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56a28:
  call void @_ZNSaISt10_List_nodeIlEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56a48:
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIlSaIlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56a68:
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIlSaIlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56a88:
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56aa8:
  call void @_ZNSaISt10_List_nodeIlEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56ad4:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56af4:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIlSaIlEE9push_backERKl(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_56b20:
  %0 = call i64 @_ZNSt7__cxx114listIlSaIlEE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIlSaIlEE9_M_insertIJRKlEEEvSt14_List_iteratorIlEDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIlSaIlEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_56b5a:
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
  br i1 %8, label %dec_label_pc_56c1f, label %dec_label_pc_56c1a

dec_label_pc_56c1a:                               ; preds = %dec_label_pc_56b5a
  call void @__stack_chk_fail()
  br label %dec_label_pc_56c1f

dec_label_pc_56c1f:                               ; preds = %dec_label_pc_56c1a, %dec_label_pc_56b5a
  ret void
}

define void @_ZNSaISt10_List_nodeIlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56c26:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56c46:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_56cd1:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIlSaIlEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_56cd6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIlEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_56d20, label %dec_label_pc_56d1b

dec_label_pc_56d1b:                               ; preds = %dec_label_pc_56cd6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_56d20

dec_label_pc_56d20:                               ; preds = %dec_label_pc_56d1b, %dec_label_pc_56cd6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIlSaIlEE9_M_insertIJRKlEEEvSt14_List_iteratorIlEDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_56d22:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKlEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIlSaIlEE14_M_create_nodeIJRKlEEEPSt10_List_nodeIlEDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIlEES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_56d83:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_56dcd, label %dec_label_pc_56dc8

dec_label_pc_56dc8:                               ; preds = %dec_label_pc_56d83
  call void @__stack_chk_fail()
  br label %dec_label_pc_56dcd

dec_label_pc_56dcd:                               ; preds = %dec_label_pc_56dc8, %dec_label_pc_56d83
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIlSaIlEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_56dd4:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEEC2EOSaISt10_List_nodeIlEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_56de6:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIlEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implC2EOSaISt10_List_nodeIlEE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIlSaIlEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_56e1e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIlEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_56e6b, label %dec_label_pc_56e66

dec_label_pc_56e66:                               ; preds = %dec_label_pc_56e1e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_56e6b

dec_label_pc_56e6b:                               ; preds = %dec_label_pc_56e66, %dec_label_pc_56e1e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIlSaIlEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_56e6e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIlEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_56eb8, label %dec_label_pc_56eb3

dec_label_pc_56eb3:                               ; preds = %dec_label_pc_56e6e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_56eb8

dec_label_pc_56eb8:                               ; preds = %dec_label_pc_56eb3, %dec_label_pc_56e6e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIlSaIlEE22_M_initialize_dispatchISt20_List_const_iteratorIlEEEvT_S6_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_56eba:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIlES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_56ed4.lr.ph, label %dec_label_pc_56f15

dec_label_pc_56ed4.lr.ph:                         ; preds = %dec_label_pc_56eba
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_56ed4

dec_label_pc_56ed4:                               ; preds = %dec_label_pc_56ed4.lr.ph, %dec_label_pc_56ed4
  %5 = call i64 @_ZNKSt20_List_const_iteratorIlEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIlSaIlEE12emplace_backIJRKlEEERlDpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIlEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIlES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_56ed4, label %dec_label_pc_56f15

dec_label_pc_56f15:                               ; preds = %dec_label_pc_56ed4, %dec_label_pc_56eba
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_56f1a:
  ret void
}

define i64 @_ZNSt10_List_nodeIlE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_56f2a:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIlE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_56f4c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIlEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_56fb8:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIlSaIlEE14_M_create_nodeIJRKlEEEPSt10_List_nodeIlEDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_56fd6:
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
  br i1 %12, label %dec_label_pc_57099, label %dec_label_pc_57094

dec_label_pc_57094:                               ; preds = %dec_label_pc_56fd6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_57099

dec_label_pc_57099:                               ; preds = %dec_label_pc_57094, %dec_label_pc_56fd6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_570a0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_570ca:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIlEEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIlEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_570f7:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIlSaIlEE10_List_implC2EOSaISt10_List_nodeIlEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5710a:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIlEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSaISt10_List_nodeIlEEC2ERKS1_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIlEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5714c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIlES2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5716a:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIlEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_57190:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIlEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_571b4:
  %0 = call i64 @_ZNKSt10_List_nodeIlE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIlSaIlEE12emplace_backIJRKlEEERlDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_571d6:
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
dec_label_pc_5722e:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIlE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5725f:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIlSaIlEE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_57292:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE8allocateERS2_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIlEEEC2ERS2_PS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_572b6:
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
dec_label_pc_572f0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_5732c, label %dec_label_pc_5730d

dec_label_pc_5730d:                               ; preds = %dec_label_pc_572f0
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE10deallocateERS2_PS1_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_5732c

dec_label_pc_5732c:                               ; preds = %dec_label_pc_5730d, %dec_label_pc_572f0
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE9constructIlJRKlEEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5732f:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKlEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE9constructIlJRKlEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIlEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_5736c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIlEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5738e:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIlE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_573b8:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIlE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIlSaIlEE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_573da:
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
  br i1 %5, label %dec_label_pc_57435, label %dec_label_pc_57430

dec_label_pc_57430:                               ; preds = %dec_label_pc_573da
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_57435

dec_label_pc_57435:                               ; preds = %dec_label_pc_57430, %dec_label_pc_573da
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIlE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_57438:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5744a:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIlEEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_57487:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIlEEEPT_RS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_574b5:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE9constructIlJRKlEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_574c8:
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
dec_label_pc_5750c:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIlE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_57520:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIlE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIlEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_5753e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIlEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_57562:
  %0 = call i64 @_ZNSt10_List_nodeIlE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIlEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_57584:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIlEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5759c:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIlEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_575ee, label %dec_label_pc_575d4

dec_label_pc_575d4:                               ; preds = %dec_label_pc_5759c
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_575e9, label %dec_label_pc_575e4

dec_label_pc_575e4:                               ; preds = %dec_label_pc_575d4
  %7 = call i64 @anon2()
  br label %dec_label_pc_575e9

dec_label_pc_575e9:                               ; preds = %dec_label_pc_575e4, %dec_label_pc_575d4
  %8 = call i64 @anon3()
  br label %dec_label_pc_575ee

dec_label_pc_575ee:                               ; preds = %dec_label_pc_575e9, %dec_label_pc_5759c
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIlE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_5760a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_63cd7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIlSaIlEEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, 1152921504606846976
  %7 = call i32 @rand()
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 35184372088832
  %10 = call i32 @rand()
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 1073741824
  %13 = call i32 @rand()
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 32768
  %16 = call i32 @rand()
  %17 = sext i32 %16 to i64
  %18 = sext i1 %3 to i64
  %19 = xor i64 %6, %18
  %20 = xor i64 %19, %9
  %21 = xor i64 %20, %12
  %22 = xor i64 %21, %15
  %storemerge = xor i64 %22, %17
  store i64 %storemerge, ptr %stack_var_-96, align 8
  %23 = bitcast ptr %stack_var_-96 to ptr
  %24 = call i64 @_ZNSt7__cxx114listIlSaIlEE9push_backERKl(ptr nonnull %stack_var_-88, ptr nonnull %23)
  %25 = call i64 @_ZNSt7__cxx114listIlSaIlEE9push_backERKl(ptr nonnull %stack_var_-88, ptr nonnull %23)
  %26 = call i64 @_ZNSt7__cxx114listIlSaIlEE9push_backERKl(ptr nonnull %stack_var_-88, ptr nonnull %23)
  call void @_ZNSt7__cxx114listIlSaIlEEC2ERKS2_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %27 = ptrtoint ptr %stack_var_-56 to i64
  %28 = call i64 @anon1(i64 %27)
  call void @_ZNSt7__cxx114listIlSaIlEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIlSaIlEED2Ev(ptr nonnull %stack_var_-88)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %0, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_63e59, label %dec_label_pc_63e54

dec_label_pc_63e54:                               ; preds = %dec_label_pc_63cd7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_63e59

dec_label_pc_63e59:                               ; preds = %dec_label_pc_63e54, %dec_label_pc_63cd7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_63efc:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIlSaIlEE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp slt i64 %3, 1
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_63f5e, label %dec_label_pc_63f26

dec_label_pc_63f26:                               ; preds = %dec_label_pc_63efc
  %5 = icmp sgt i64 %3, 4611686018427387902
  br i1 %5, label %dec_label_pc_63f4f, label %dec_label_pc_63f36

dec_label_pc_63f36:                               ; preds = %dec_label_pc_63f26
  %6 = mul i64 %3, 2
  call void @printLongLongLine(i64 %6)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_63f5e

dec_label_pc_63f4f:                               ; preds = %dec_label_pc_63f26
  call void @printLine(ptr @global_var_92c50)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_63f5e

dec_label_pc_63f5e:                               ; preds = %dec_label_pc_63f4f, %dec_label_pc_63f36, %dec_label_pc_63efc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

