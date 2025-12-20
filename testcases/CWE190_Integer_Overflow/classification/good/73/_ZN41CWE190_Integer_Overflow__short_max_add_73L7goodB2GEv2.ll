@global_var_78c78 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3fdcf:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41fc0:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_41fe0:
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

define ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_4bdf4:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIsSaIsEE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4cca8:
  call void @_ZNSaISt10_List_nodeIsEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIsSaIsEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4ccc8:
  call void @_ZNSt7__cxx1110_List_baseIsSaIsEE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIsSaIsEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4cce8:
  call void @_ZNSt7__cxx1110_List_baseIsSaIsEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIsSaIsEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4cd08:
  call void @_ZNSt7__cxx1110_List_baseIsSaIsEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIsSaIsEE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4cd28:
  call void @_ZNSaISt10_List_nodeIsEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIsEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4cd54:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIsSaIsEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4cd74:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIsSaIsEE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIsSaIsEE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIsSaIsEE9push_backERKs(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4cda0:
  %0 = call i64 @_ZNSt7__cxx114listIsSaIsEE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIsSaIsEE9_M_insertIJRKsEEEvSt14_List_iteratorIsEDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIsSaIsEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4cdda:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIsSaIsEE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIsEES2_E17_S_select_on_copyERKS3_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIsSaIsEEC2EOSaISt10_List_nodeIsEE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIsEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIsSaIsEE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIsSaIsEE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIsSaIsEE22_M_initialize_dispatchISt20_List_const_iteratorIsEEEvT_S6_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_4ce9f, label %dec_label_pc_4ce9a

dec_label_pc_4ce9a:                               ; preds = %dec_label_pc_4cdda
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ce9f

dec_label_pc_4ce9f:                               ; preds = %dec_label_pc_4ce9a, %dec_label_pc_4cdda
  ret void
}

define void @_ZNSaISt10_List_nodeIsEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4cea6:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4cec6:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIsSaIsEE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_4cf51:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIsSaIsEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_4cf56:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIsEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_4cfa0, label %dec_label_pc_4cf9b

dec_label_pc_4cf9b:                               ; preds = %dec_label_pc_4cf56
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4cfa0

dec_label_pc_4cfa0:                               ; preds = %dec_label_pc_4cf9b, %dec_label_pc_4cf56
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIsSaIsEE9_M_insertIJRKsEEEvSt14_List_iteratorIsEDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4cfa2:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIsSaIsEE14_M_create_nodeIJRKsEEEPSt10_List_nodeIsEDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIsSaIsEE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIsEES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4d003:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIsEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_4d04d, label %dec_label_pc_4d048

dec_label_pc_4d048:                               ; preds = %dec_label_pc_4d003
  call void @__stack_chk_fail()
  br label %dec_label_pc_4d04d

dec_label_pc_4d04d:                               ; preds = %dec_label_pc_4d048, %dec_label_pc_4d003
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIsSaIsEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d054:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIsSaIsEEC2EOSaISt10_List_nodeIsEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4d066:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIsEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIsSaIsEE10_List_implC2EOSaISt10_List_nodeIsEE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIsSaIsEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d09e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIsEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_4d0eb, label %dec_label_pc_4d0e6

dec_label_pc_4d0e6:                               ; preds = %dec_label_pc_4d09e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4d0eb

dec_label_pc_4d0eb:                               ; preds = %dec_label_pc_4d0e6, %dec_label_pc_4d09e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIsSaIsEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d0ee:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIsEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_4d138, label %dec_label_pc_4d133

dec_label_pc_4d133:                               ; preds = %dec_label_pc_4d0ee
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4d138

dec_label_pc_4d138:                               ; preds = %dec_label_pc_4d133, %dec_label_pc_4d0ee
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIsSaIsEE22_M_initialize_dispatchISt20_List_const_iteratorIsEEEvT_S6_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4d13a:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIsES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_4d154.lr.ph, label %dec_label_pc_4d195

dec_label_pc_4d154.lr.ph:                         ; preds = %dec_label_pc_4d13a
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_4d154

dec_label_pc_4d154:                               ; preds = %dec_label_pc_4d154.lr.ph, %dec_label_pc_4d154
  %5 = call i64 @_ZNKSt20_List_const_iteratorIsEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIsSaIsEE12emplace_backIJRKsEEERsDpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIsEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIsES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_4d154, label %dec_label_pc_4d195

dec_label_pc_4d195:                               ; preds = %dec_label_pc_4d154, %dec_label_pc_4d13a
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4d19a:
  ret void
}

define i64 @_ZNSt10_List_nodeIsE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d1aa:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIsE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIsSaIsEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d1cc:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIsEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4d238:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIsSaIsEE14_M_create_nodeIJRKsEEEPSt10_List_nodeIsEDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_4d256:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIsSaIsEE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIsSaIsEE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIsEEEC2ERS2_PS1_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIsE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIsEEE9constructIsJRKsEEEvRS2_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIsEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIsEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_4d319, label %dec_label_pc_4d314

dec_label_pc_4d314:                               ; preds = %dec_label_pc_4d256
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4d319

dec_label_pc_4d319:                               ; preds = %dec_label_pc_4d314, %dec_label_pc_4d256
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIsSaIsEE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_4d320:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIsEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4d34a:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIsEEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIsEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4d377:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIsSaIsEE10_List_implC2EOSaISt10_List_nodeIsEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4d38a:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIsEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSaISt10_List_nodeIsEEC2ERKS1_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIsEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4d3cc:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIsES2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_4d3ea:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIsEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d410:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIsEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d434:
  %0 = call i64 @_ZNKSt10_List_nodeIsE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIsSaIsEE12emplace_backIJRKsEEERsDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_4d456:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIsSaIsEE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIsSaIsEE9_M_insertIJRKsEEEvSt14_List_iteratorIsEDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIsSaIsEE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIsE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d4ae:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIsE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIsEEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4d4df:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIsSaIsEE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d512:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIsEEE8allocateERS2_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIsEEEC2ERS2_PS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4d536:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIsEEEPT_RS3_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIsEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4d570:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_4d5ac, label %dec_label_pc_4d58d

dec_label_pc_4d58d:                               ; preds = %dec_label_pc_4d570
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIsEEE10deallocateERS2_PS1_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_4d5ac

dec_label_pc_4d5ac:                               ; preds = %dec_label_pc_4d58d, %dec_label_pc_4d570
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIsEEE9constructIsJRKsEEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4d5af:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEE9constructIsJRKsEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIsEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_4d5ec:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIsEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4d60e:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIsE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d638:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIsE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIsSaIsEE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d65a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIsSaIsEE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIsEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIsEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4d6b5, label %dec_label_pc_4d6b0

dec_label_pc_4d6b0:                               ; preds = %dec_label_pc_4d65a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4d6b5

dec_label_pc_4d6b5:                               ; preds = %dec_label_pc_4d6b0, %dec_label_pc_4d65a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIsE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d6b8:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4d6ca:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIsEEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_4d707:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIsEEEPT_RS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4d735:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEE9constructIsJRKsEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4d748:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = bitcast ptr %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 2, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i16 %3, ptr %6, align 2
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4d78c:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIsE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d7a0:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIsE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIsEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d7be:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIsEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d7e2:
  %0 = call i64 @_ZNSt10_List_nodeIsE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIsEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d804:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIsEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4d81c:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIsEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_4d86e, label %dec_label_pc_4d854

dec_label_pc_4d854:                               ; preds = %dec_label_pc_4d81c
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_4d869, label %dec_label_pc_4d864

dec_label_pc_4d864:                               ; preds = %dec_label_pc_4d854
  %7 = call i64 @anon2()
  br label %dec_label_pc_4d869

dec_label_pc_4d869:                               ; preds = %dec_label_pc_4d864, %dec_label_pc_4d854
  %8 = call i64 @anon3()
  br label %dec_label_pc_4d86e

dec_label_pc_4d86e:                               ; preds = %dec_label_pc_4d869, %dec_label_pc_4d81c
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIsE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_4d88a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_550a8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-90 = alloca i16, align 2
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIsSaIsEEC2Ev(ptr nonnull %stack_var_-88)
  store i16 32767, ptr %stack_var_-90, align 2
  %1 = call i64 @_ZNSt7__cxx114listIsSaIsEE9push_backERKs(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-90)
  %2 = call i64 @_ZNSt7__cxx114listIsSaIsEE9push_backERKs(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-90)
  %3 = call i64 @_ZNSt7__cxx114listIsSaIsEE9push_backERKs(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-90)
  call void @_ZNSt7__cxx114listIsSaIsEEC2ERKS2_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %4 = ptrtoint ptr %stack_var_-56 to i64
  %5 = call i64 @anon1(i64 %4)
  call void @_ZNSt7__cxx114listIsSaIsEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIsSaIsEED2Ev(ptr nonnull %stack_var_-88)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_55195, label %dec_label_pc_55190

dec_label_pc_55190:                               ; preds = %dec_label_pc_550a8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_55195

dec_label_pc_55195:                               ; preds = %dec_label_pc_55190, %dec_label_pc_550a8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_55228:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIsSaIsEE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, 32767
  br i1 %4, label %dec_label_pc_5526b, label %dec_label_pc_55253

dec_label_pc_55253:                               ; preds = %dec_label_pc_55228
  %5 = zext i16 %3 to i32
  %6 = mul i32 %5, 65536
  %sext = add i32 %6, 65536
  %7 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_5527a

dec_label_pc_5526b:                               ; preds = %dec_label_pc_55228
  call void @printLine(ptr @global_var_78c78)
  br label %dec_label_pc_5527a

dec_label_pc_5527a:                               ; preds = %dec_label_pc_5526b, %dec_label_pc_55253
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

