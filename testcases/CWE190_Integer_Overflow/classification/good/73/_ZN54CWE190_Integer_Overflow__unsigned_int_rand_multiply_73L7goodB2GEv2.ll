@global_var_701a0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_39209:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3b3c8:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_3b3e8:
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

define ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_40f00:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIjSaIjEE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41dc8:
  call void @_ZNSaISt10_List_nodeIjEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIjSaIjEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41de8:
  call void @_ZNSt7__cxx1110_List_baseIjSaIjEE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIjSaIjEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41e08:
  call void @_ZNSt7__cxx1110_List_baseIjSaIjEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIjSaIjEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41e28:
  call void @_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIjSaIjEE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41e48:
  call void @_ZNSaISt10_List_nodeIjEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIjEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41e74:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41e94:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIjSaIjEE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIjSaIjEE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIjSaIjEE9push_backERKj(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_41ec0:
  %0 = call i64 @_ZNSt7__cxx114listIjSaIjEE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIjSaIjEE9_M_insertIJRKjEEEvSt14_List_iteratorIjEDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIjSaIjEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_41efa:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIjSaIjEE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIjEES2_E17_S_select_on_copyERKS3_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIjSaIjEEC2EOSaISt10_List_nodeIjEE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIjEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIjSaIjEE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIjSaIjEE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIjSaIjEE22_M_initialize_dispatchISt20_List_const_iteratorIjEEEvT_S6_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_41fbf, label %dec_label_pc_41fba

dec_label_pc_41fba:                               ; preds = %dec_label_pc_41efa
  call void @__stack_chk_fail()
  br label %dec_label_pc_41fbf

dec_label_pc_41fbf:                               ; preds = %dec_label_pc_41fba, %dec_label_pc_41efa
  ret void
}

define void @_ZNSaISt10_List_nodeIjEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41fc6:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_41fe6:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIjSaIjEE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_42071:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIjSaIjEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_42076:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIjEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_420c0, label %dec_label_pc_420bb

dec_label_pc_420bb:                               ; preds = %dec_label_pc_42076
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_420c0

dec_label_pc_420c0:                               ; preds = %dec_label_pc_420bb, %dec_label_pc_42076
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIjSaIjEE9_M_insertIJRKjEEEvSt14_List_iteratorIjEDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_420c2:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIjSaIjEE14_M_create_nodeIJRKjEEEPSt10_List_nodeIjEDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIjSaIjEE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIjEES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_42123:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIjEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_4216d, label %dec_label_pc_42168

dec_label_pc_42168:                               ; preds = %dec_label_pc_42123
  call void @__stack_chk_fail()
  br label %dec_label_pc_4216d

dec_label_pc_4216d:                               ; preds = %dec_label_pc_42168, %dec_label_pc_42123
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIjSaIjEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_42174:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIjSaIjEEC2EOSaISt10_List_nodeIjEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_42186:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIjEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIjSaIjEE10_List_implC2EOSaISt10_List_nodeIjEE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIjSaIjEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_421be:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIjEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_4220b, label %dec_label_pc_42206

dec_label_pc_42206:                               ; preds = %dec_label_pc_421be
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4220b

dec_label_pc_4220b:                               ; preds = %dec_label_pc_42206, %dec_label_pc_421be
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIjSaIjEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_4220e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIjEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_42258, label %dec_label_pc_42253

dec_label_pc_42253:                               ; preds = %dec_label_pc_4220e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_42258

dec_label_pc_42258:                               ; preds = %dec_label_pc_42253, %dec_label_pc_4220e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIjSaIjEE22_M_initialize_dispatchISt20_List_const_iteratorIjEEEvT_S6_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4225a:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIjES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_42274.lr.ph, label %dec_label_pc_422b5

dec_label_pc_42274.lr.ph:                         ; preds = %dec_label_pc_4225a
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_42274

dec_label_pc_42274:                               ; preds = %dec_label_pc_42274.lr.ph, %dec_label_pc_42274
  %5 = call i64 @_ZNKSt20_List_const_iteratorIjEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIjSaIjEE12emplace_backIJRKjEEERjDpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIjEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIjES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_42274, label %dec_label_pc_422b5

dec_label_pc_422b5:                               ; preds = %dec_label_pc_42274, %dec_label_pc_4225a
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_422ba:
  ret void
}

define i64 @_ZNSt10_List_nodeIjE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_422ca:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIjE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIjSaIjEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_422ec:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIjEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_42358:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIjSaIjEE14_M_create_nodeIJRKjEEEPSt10_List_nodeIjEDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_42376:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIjSaIjEE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIjSaIjEE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIjEEEC2ERS2_PS1_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIjE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIjEEE9constructIjJRKjEEEvRS2_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIjEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIjEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_42439, label %dec_label_pc_42434

dec_label_pc_42434:                               ; preds = %dec_label_pc_42376
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_42439

dec_label_pc_42439:                               ; preds = %dec_label_pc_42434, %dec_label_pc_42376
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIjSaIjEE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_42440:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIjEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4246a:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIjEEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIjEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_42497:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIjSaIjEE10_List_implC2EOSaISt10_List_nodeIjEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_424aa:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIjEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSaISt10_List_nodeIjEEC2ERKS1_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIjEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_424ec:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIjES2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_4250a:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIjEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_42530:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIjEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_42554:
  %0 = call i64 @_ZNKSt10_List_nodeIjE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIjSaIjEE12emplace_backIJRKjEEERjDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_42576:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIjSaIjEE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIjSaIjEE9_M_insertIJRKjEEEvSt14_List_iteratorIjEDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIjSaIjEE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIjE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_425ce:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIjE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIjEEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_425ff:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIjSaIjEE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_42632:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIjEEE8allocateERS2_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIjEEEC2ERS2_PS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_42656:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIjEEEPT_RS3_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIjEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_42690:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_426cc, label %dec_label_pc_426ad

dec_label_pc_426ad:                               ; preds = %dec_label_pc_42690
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIjEEE10deallocateERS2_PS1_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_426cc

dec_label_pc_426cc:                               ; preds = %dec_label_pc_426ad, %dec_label_pc_42690
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIjEEE9constructIjJRKjEEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_426cf:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEE9constructIjJRKjEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIjEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_4270c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIjEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4272e:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIjE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_42758:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIjE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIjSaIjEE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_4277a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIjSaIjEE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIjEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIjEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_427d5, label %dec_label_pc_427d0

dec_label_pc_427d0:                               ; preds = %dec_label_pc_4277a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_427d5

dec_label_pc_427d5:                               ; preds = %dec_label_pc_427d0, %dec_label_pc_4277a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIjE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_427d8:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_427ea:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIjEEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_42827:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIjEEEPT_RS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_42855:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEE9constructIjJRKjEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_42868:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = bitcast ptr %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 4, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i32 %3, ptr %6, align 4
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_428aa:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIjE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_428be:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIjE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIjEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_428dc:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIjEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_42900:
  %0 = call i64 @_ZNSt10_List_nodeIjE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIjEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_42922:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIjEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4293a:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIjEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_4298c, label %dec_label_pc_42972

dec_label_pc_42972:                               ; preds = %dec_label_pc_4293a
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_42987, label %dec_label_pc_42982

dec_label_pc_42982:                               ; preds = %dec_label_pc_42972
  %7 = call i64 @anon2()
  br label %dec_label_pc_42987

dec_label_pc_42987:                               ; preds = %dec_label_pc_42982, %dec_label_pc_42972
  %8 = call i64 @anon3()
  br label %dec_label_pc_4298c

dec_label_pc_4298c:                               ; preds = %dec_label_pc_42987, %dec_label_pc_4293a
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIjE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_429a8:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_516b4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-92 = alloca i32, align 4
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIjSaIjEEC2Ev(ptr nonnull %stack_var_-88)
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
  %12 = call i64 @_ZNSt7__cxx114listIjSaIjEE9push_backERKj(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-92)
  %13 = call i64 @_ZNSt7__cxx114listIjSaIjEE9push_backERKj(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-92)
  %14 = call i64 @_ZNSt7__cxx114listIjSaIjEE9push_backERKj(ptr nonnull %stack_var_-88, ptr nonnull %stack_var_-92)
  call void @_ZNSt7__cxx114listIjSaIjEEC2ERKS2_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %15 = ptrtoint ptr %stack_var_-56 to i64
  %16 = call i64 @anon1(i64 %15)
  call void @_ZNSt7__cxx114listIjSaIjEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIjSaIjEED2Ev(ptr nonnull %stack_var_-88)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_517e5, label %dec_label_pc_517e0

dec_label_pc_517e0:                               ; preds = %dec_label_pc_516b4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_517e5

dec_label_pc_517e5:                               ; preds = %dec_label_pc_517e0, %dec_label_pc_516b4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_51878:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIjSaIjEE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_518cb, label %dec_label_pc_5189f

dec_label_pc_5189f:                               ; preds = %dec_label_pc_51878
  %5 = icmp ult i32 %3, 2147483647
  br i1 %5, label %dec_label_pc_518a8, label %dec_label_pc_518bc

dec_label_pc_518a8:                               ; preds = %dec_label_pc_5189f
  %6 = mul i32 %3, 2
  call void @printUnsignedLine(i32 %6)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_518cb

dec_label_pc_518bc:                               ; preds = %dec_label_pc_5189f
  call void @printLine(ptr @global_var_701a0)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_518cb

dec_label_pc_518cb:                               ; preds = %dec_label_pc_518bc, %dec_label_pc_518a8, %dec_label_pc_51878
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
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

