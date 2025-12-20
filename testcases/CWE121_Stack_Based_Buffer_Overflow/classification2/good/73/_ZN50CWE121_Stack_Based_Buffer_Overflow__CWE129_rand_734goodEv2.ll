@global_var_be5f0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_73fb1:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_75228:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_76492:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_764b2:
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
dec_label_pc_764e8:
  call void @_ZNSaISt10_List_nodeIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_76508:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_76528:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_76548:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_76568:
  call void @_ZNSaISt10_List_nodeIiEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_76594:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_765b4:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_765e0:
  %0 = call i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7661a:
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
  br i1 %8, label %dec_label_pc_766df, label %dec_label_pc_766da

dec_label_pc_766da:                               ; preds = %dec_label_pc_7661a
  call void @__stack_chk_fail()
  br label %dec_label_pc_766df

dec_label_pc_766df:                               ; preds = %dec_label_pc_766da, %dec_label_pc_7661a
  ret void
}

define void @_ZNSaISt10_List_nodeIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_766e6:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_76706:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_76791:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_76796:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_767e0, label %dec_label_pc_767db

dec_label_pc_767db:                               ; preds = %dec_label_pc_76796
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_767e0

dec_label_pc_767e0:                               ; preds = %dec_label_pc_767db, %dec_label_pc_76796
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_767e2:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_76843:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_7688d, label %dec_label_pc_76888

dec_label_pc_76888:                               ; preds = %dec_label_pc_76843
  call void @__stack_chk_fail()
  br label %dec_label_pc_7688d

dec_label_pc_7688d:                               ; preds = %dec_label_pc_76888, %dec_label_pc_76843
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_76894:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_768a6:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIiSaIiEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_768de:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7692b, label %dec_label_pc_76926

dec_label_pc_76926:                               ; preds = %dec_label_pc_768de
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7692b

dec_label_pc_7692b:                               ; preds = %dec_label_pc_76926, %dec_label_pc_768de
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_7692e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_76978, label %dec_label_pc_76973

dec_label_pc_76973:                               ; preds = %dec_label_pc_7692e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_76978

dec_label_pc_76978:                               ; preds = %dec_label_pc_76973, %dec_label_pc_7692e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7697a:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_76994.lr.ph, label %dec_label_pc_769d5

dec_label_pc_76994.lr.ph:                         ; preds = %dec_label_pc_7697a
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_76994

dec_label_pc_76994:                               ; preds = %dec_label_pc_76994.lr.ph, %dec_label_pc_76994
  %5 = call i64 @_ZNKSt20_List_const_iteratorIiEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIiSaIiEE12emplace_backIJRKiEEERiDpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIiEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_76994, label %dec_label_pc_769d5

dec_label_pc_769d5:                               ; preds = %dec_label_pc_76994, %dec_label_pc_7697a
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_769da:
  ret void
}

define i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_769ea:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_76a0c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_76a78:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_76a96:
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
  br i1 %12, label %dec_label_pc_76b59, label %dec_label_pc_76b54

dec_label_pc_76b54:                               ; preds = %dec_label_pc_76a96
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_76b59

dec_label_pc_76b59:                               ; preds = %dec_label_pc_76b54, %dec_label_pc_76a96
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_76b60:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_76b8a:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_76bb7:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_76bca:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_76c0c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_76c2a:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIiEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_76c50:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_76c74:
  %0 = call i64 @_ZNKSt10_List_nodeIiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIiSaIiEE12emplace_backIJRKiEEERiDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_76c96:
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
dec_label_pc_76cee:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_76d1f:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_76d52:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_76d76:
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
dec_label_pc_76db0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_76dec, label %dec_label_pc_76dcd

dec_label_pc_76dcd:                               ; preds = %dec_label_pc_76db0
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_76dec

dec_label_pc_76dec:                               ; preds = %dec_label_pc_76dcd, %dec_label_pc_76db0
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_76def:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_76e2c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_76e4e:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_76e78:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_76e9a:
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
  br i1 %5, label %dec_label_pc_76ef5, label %dec_label_pc_76ef0

dec_label_pc_76ef0:                               ; preds = %dec_label_pc_76e9a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_76ef5

dec_label_pc_76ef5:                               ; preds = %dec_label_pc_76ef0, %dec_label_pc_76e9a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_76ef8:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_76f0a:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_76f47:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_76f75:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_76f88:
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
dec_label_pc_76fca:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_76fde:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIiEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_76ffc:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_77020:
  %0 = call i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_77042:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7705a:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_770ac, label %dec_label_pc_77092

dec_label_pc_77092:                               ; preds = %dec_label_pc_7705a
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_770a7, label %dec_label_pc_770a2

dec_label_pc_770a2:                               ; preds = %dec_label_pc_77092
  %7 = call i64 @anon2()
  br label %dec_label_pc_770a7

dec_label_pc_770a7:                               ; preds = %dec_label_pc_770a2, %dec_label_pc_77092
  %8 = call i64 @anon3()
  br label %dec_label_pc_770ac

dec_label_pc_770ac:                               ; preds = %dec_label_pc_770a7, %dec_label_pc_7705a
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_770c8:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_88888:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-92 = alloca i32, align 4
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIiSaIiEEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge.in = xor i32 %10, %11
  store i32 %storemerge.in, ptr %stack_var_-92, align 4
  %12 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-92)
  %13 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-92)
  %14 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-92)
  call void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %15 = ptrtoint ptr %stack_var_-56 to i64
  %16 = call i64 @anon1(i64 %15)
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr nonnull %stack_var_-88)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_889b9, label %dec_label_pc_889b4

dec_label_pc_889b4:                               ; preds = %dec_label_pc_88888
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_889b9

dec_label_pc_889b9:                               ; preds = %dec_label_pc_889b4, %dec_label_pc_88888
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_88b40:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = inttoptr i64 %arg1 to ptr
  %2 = call i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %1)
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 9
  br i1 %5, label %dec_label_pc_88bd6, label %dec_label_pc_88ba4

dec_label_pc_88ba4:                               ; preds = %dec_label_pc_88b40
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = sext i32 %4 to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %6, -48
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_88bba

dec_label_pc_88bba:                               ; preds = %dec_label_pc_88bba, %dec_label_pc_88ba4
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_88be5, label %dec_label_pc_88bba

dec_label_pc_88bd6:                               ; preds = %dec_label_pc_88b40
  call void @printLine(ptr @global_var_be5f0)
  br label %dec_label_pc_88be5

dec_label_pc_88be5:                               ; preds = %dec_label_pc_88bba, %dec_label_pc_88bd6
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_88bfa, label %dec_label_pc_88bf5

dec_label_pc_88bf5:                               ; preds = %dec_label_pc_88be5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_88bfa

dec_label_pc_88bfa:                               ; preds = %dec_label_pc_88bf5, %dec_label_pc_88be5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
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

