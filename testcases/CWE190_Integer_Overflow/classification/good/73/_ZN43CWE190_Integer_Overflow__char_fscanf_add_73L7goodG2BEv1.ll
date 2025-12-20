@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3ccfd:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_3deb4:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3eb35:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-89 = alloca i8, align 1
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIcSaIcEEC2Ev(ptr nonnull %stack_var_-88)
  store i8 2, ptr %stack_var_-89, align 1
  %1 = call i64 @_ZNSt7__cxx114listIcSaIcEE9push_backERKc(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-89)
  %2 = call i64 @_ZNSt7__cxx114listIcSaIcEE9push_backERKc(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-89)
  %3 = call i64 @_ZNSt7__cxx114listIcSaIcEE9push_backERKc(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-89)
  call void @_ZNSt7__cxx114listIcSaIcEEC2ERKS2_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %4 = ptrtoint ptr %stack_var_-56 to i64
  %5 = call i64 @anon1(i64 %4)
  call void @_ZNSt7__cxx114listIcSaIcEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIcSaIcEED2Ev(ptr nonnull %stack_var_-88)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3ec1e, label %dec_label_pc_3ec19

dec_label_pc_3ec19:                               ; preds = %dec_label_pc_3eb35
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3ec1e

dec_label_pc_3ec1e:                               ; preds = %dec_label_pc_3ec19, %dec_label_pc_3eb35
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

define void @_ZNSt7__cxx1110_List_baseIcSaIcEE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3ed9c:
  call void @_ZNSaISt10_List_nodeIcEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIcSaIcEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3edbc:
  call void @_ZNSt7__cxx1110_List_baseIcSaIcEE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIcSaIcEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3eddc:
  call void @_ZNSt7__cxx1110_List_baseIcSaIcEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIcSaIcEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3edfc:
  call void @_ZNSt7__cxx1110_List_baseIcSaIcEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIcSaIcEE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3ee1c:
  call void @_ZNSaISt10_List_nodeIcEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIcEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3ee48:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIcSaIcEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3ee68:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIcSaIcEE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIcSaIcEE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIcSaIcEE9push_backERKc(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3ee94:
  %0 = call i64 @_ZNSt7__cxx114listIcSaIcEE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIcSaIcEE9_M_insertIJRKcEEEvSt14_List_iteratorIcEDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIcSaIcEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3eece:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIcSaIcEE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIcEES2_E17_S_select_on_copyERKS3_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIcSaIcEEC2EOSaISt10_List_nodeIcEE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIcEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIcSaIcEE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIcSaIcEE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIcSaIcEE22_M_initialize_dispatchISt20_List_const_iteratorIcEEEvT_S6_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_3ef93, label %dec_label_pc_3ef8e

dec_label_pc_3ef8e:                               ; preds = %dec_label_pc_3eece
  call void @__stack_chk_fail()
  br label %dec_label_pc_3ef93

dec_label_pc_3ef93:                               ; preds = %dec_label_pc_3ef8e, %dec_label_pc_3eece
  ret void
}

define void @_ZNSaISt10_List_nodeIcEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3ef9a:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3efba:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIcSaIcEE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f045:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIcSaIcEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f04a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIcEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3f094, label %dec_label_pc_3f08f

dec_label_pc_3f08f:                               ; preds = %dec_label_pc_3f04a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f094

dec_label_pc_3f094:                               ; preds = %dec_label_pc_3f08f, %dec_label_pc_3f04a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIcSaIcEE9_M_insertIJRKcEEEvSt14_List_iteratorIcEDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3f096:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIcSaIcEE14_M_create_nodeIJRKcEEEPSt10_List_nodeIcEDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIcSaIcEE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIcEES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f0f7:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIcEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_3f141, label %dec_label_pc_3f13c

dec_label_pc_3f13c:                               ; preds = %dec_label_pc_3f0f7
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f141

dec_label_pc_3f141:                               ; preds = %dec_label_pc_3f13c, %dec_label_pc_3f0f7
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIcSaIcEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f148:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIcSaIcEEC2EOSaISt10_List_nodeIcEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f15a:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIcEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIcSaIcEE10_List_implC2EOSaISt10_List_nodeIcEE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIcSaIcEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f192:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIcEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3f1df, label %dec_label_pc_3f1da

dec_label_pc_3f1da:                               ; preds = %dec_label_pc_3f192
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f1df

dec_label_pc_3f1df:                               ; preds = %dec_label_pc_3f1da, %dec_label_pc_3f192
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIcSaIcEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f1e2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIcEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3f22c, label %dec_label_pc_3f227

dec_label_pc_3f227:                               ; preds = %dec_label_pc_3f1e2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f22c

dec_label_pc_3f22c:                               ; preds = %dec_label_pc_3f227, %dec_label_pc_3f1e2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIcSaIcEE22_M_initialize_dispatchISt20_List_const_iteratorIcEEEvT_S6_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3f22e:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIcES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3f248.lr.ph, label %dec_label_pc_3f289

dec_label_pc_3f248.lr.ph:                         ; preds = %dec_label_pc_3f22e
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_3f248

dec_label_pc_3f248:                               ; preds = %dec_label_pc_3f248.lr.ph, %dec_label_pc_3f248
  %5 = call i64 @_ZNKSt20_List_const_iteratorIcEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIcSaIcEE12emplace_backIJRKcEEERcDpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIcEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIcES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_3f248, label %dec_label_pc_3f289

dec_label_pc_3f289:                               ; preds = %dec_label_pc_3f248, %dec_label_pc_3f22e
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f28e:
  ret void
}

define i64 @_ZNSt10_List_nodeIcE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f29e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIcE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIcSaIcEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f2c0:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIcEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f32c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIcSaIcEE14_M_create_nodeIJRKcEEEPSt10_List_nodeIcEDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3f34a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIcSaIcEE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIcSaIcEE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIcEEEC2ERS2_PS1_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIcE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIcEEE9constructIcJRKcEEEvRS2_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIcEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIcEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_3f40d, label %dec_label_pc_3f408

dec_label_pc_3f408:                               ; preds = %dec_label_pc_3f34a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f40d

dec_label_pc_3f40d:                               ; preds = %dec_label_pc_3f408, %dec_label_pc_3f34a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIcSaIcEE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3f414:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIcEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f43e:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIcEEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIcEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3f46b:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIcSaIcEE10_List_implC2EOSaISt10_List_nodeIcEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f47e:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIcEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSaISt10_List_nodeIcEEC2ERKS1_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIcEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f4c0:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIcES2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f4de:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIcEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f504:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIcEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f528:
  %0 = call i64 @_ZNKSt10_List_nodeIcE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIcSaIcEE12emplace_backIJRKcEEERcDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3f54a:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIcSaIcEE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIcSaIcEE9_M_insertIJRKcEEEvSt14_List_iteratorIcEDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIcSaIcEE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIcE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f5a2:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIcE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIcEEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3f5d3:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIcSaIcEE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f606:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIcEEE8allocateERS2_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIcEEEC2ERS2_PS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3f62a:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIcEEEPT_RS3_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIcEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f664:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_3f6a0, label %dec_label_pc_3f681

dec_label_pc_3f681:                               ; preds = %dec_label_pc_3f664
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIcEEE10deallocateERS2_PS1_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_3f6a0

dec_label_pc_3f6a0:                               ; preds = %dec_label_pc_3f681, %dec_label_pc_3f664
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIcEEE9constructIcJRKcEEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3f6a3:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEE9constructIcJRKcEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIcEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3f6e0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIcEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f702:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIcE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f72c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIcE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIcSaIcEE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f74e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIcSaIcEE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIcEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIcEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3f7a9, label %dec_label_pc_3f7a4

dec_label_pc_3f7a4:                               ; preds = %dec_label_pc_3f74e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f7a9

dec_label_pc_3f7a9:                               ; preds = %dec_label_pc_3f7a4, %dec_label_pc_3f74e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIcE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f7ac:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3f7be:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIcEEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_3f7fb:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIcEEEPT_RS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3f829:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEE9constructIcJRKcEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3f83c:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = bitcast ptr %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 1, ptr %4)
  store i8 %3, ptr %5, align 1
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f87e:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIcE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f892:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIcE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIcEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f8b0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIcEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f8d4:
  %0 = call i64 @_ZNSt10_List_nodeIcE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIcEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f8f6:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIcEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3f90e:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIcEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_3f960, label %dec_label_pc_3f946

dec_label_pc_3f946:                               ; preds = %dec_label_pc_3f90e
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_3f95b, label %dec_label_pc_3f956

dec_label_pc_3f956:                               ; preds = %dec_label_pc_3f946
  %7 = call i64 @anon2()
  br label %dec_label_pc_3f95b

dec_label_pc_3f95b:                               ; preds = %dec_label_pc_3f956, %dec_label_pc_3f946
  %8 = call i64 @anon3()
  br label %dec_label_pc_3f960

dec_label_pc_3f960:                               ; preds = %dec_label_pc_3f95b, %dec_label_pc_3f90e
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIcE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f97c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_3f9c8:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIcSaIcEE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, 1
  call void @printHexCharLine(i8 %4)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
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

