@global_var_88646 = external constant [16 x i8]
@global_var_88658 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32
@global_var_b8080 = external local_unnamed_addr global ptr

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5101d:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_52294:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_53238:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_53258:
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
dec_label_pc_5328e:
  call void @_ZNSaISt10_List_nodeIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_532ae:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_532ce:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_532ee:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5330e:
  call void @_ZNSaISt10_List_nodeIiEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5333a:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5335a:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_53386:
  %0 = call i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_533c0:
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
  br i1 %8, label %dec_label_pc_53485, label %dec_label_pc_53480

dec_label_pc_53480:                               ; preds = %dec_label_pc_533c0
  call void @__stack_chk_fail()
  br label %dec_label_pc_53485

dec_label_pc_53485:                               ; preds = %dec_label_pc_53480, %dec_label_pc_533c0
  ret void
}

define void @_ZNSaISt10_List_nodeIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5348c:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_534ac:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_53537:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_5353c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_53586, label %dec_label_pc_53581

dec_label_pc_53581:                               ; preds = %dec_label_pc_5353c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_53586

dec_label_pc_53586:                               ; preds = %dec_label_pc_53581, %dec_label_pc_5353c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_53588:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_535e9:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_53633, label %dec_label_pc_5362e

dec_label_pc_5362e:                               ; preds = %dec_label_pc_535e9
  call void @__stack_chk_fail()
  br label %dec_label_pc_53633

dec_label_pc_53633:                               ; preds = %dec_label_pc_5362e, %dec_label_pc_535e9
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_5363a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5364c:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIiSaIiEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_53684:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_536d1, label %dec_label_pc_536cc

dec_label_pc_536cc:                               ; preds = %dec_label_pc_53684
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_536d1

dec_label_pc_536d1:                               ; preds = %dec_label_pc_536cc, %dec_label_pc_53684
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_536d4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_5371e, label %dec_label_pc_53719

dec_label_pc_53719:                               ; preds = %dec_label_pc_536d4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5371e

dec_label_pc_5371e:                               ; preds = %dec_label_pc_53719, %dec_label_pc_536d4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_53720:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_5373a.lr.ph, label %dec_label_pc_5377b

dec_label_pc_5373a.lr.ph:                         ; preds = %dec_label_pc_53720
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_5373a

dec_label_pc_5373a:                               ; preds = %dec_label_pc_5373a.lr.ph, %dec_label_pc_5373a
  %5 = call i64 @_ZNKSt20_List_const_iteratorIiEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIiSaIiEE12emplace_backIJRKiEEERiDpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIiEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_5373a, label %dec_label_pc_5377b

dec_label_pc_5377b:                               ; preds = %dec_label_pc_5373a, %dec_label_pc_53720
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_53780:
  ret void
}

define i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_53790:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_537b2:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5381e:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_5383c:
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
  br i1 %12, label %dec_label_pc_538ff, label %dec_label_pc_538fa

dec_label_pc_538fa:                               ; preds = %dec_label_pc_5383c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_538ff

dec_label_pc_538ff:                               ; preds = %dec_label_pc_538fa, %dec_label_pc_5383c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_53906:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_53930:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5395d:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_53970:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_539b2:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_539d0:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIiEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_539f6:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_53a1a:
  %0 = call i64 @_ZNKSt10_List_nodeIiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIiSaIiEE12emplace_backIJRKiEEERiDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_53a3c:
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
dec_label_pc_53a94:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_53ac5:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_53af8:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_53b1c:
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
dec_label_pc_53b56:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_53b92, label %dec_label_pc_53b73

dec_label_pc_53b73:                               ; preds = %dec_label_pc_53b56
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_53b92

dec_label_pc_53b92:                               ; preds = %dec_label_pc_53b73, %dec_label_pc_53b56
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_53b95:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_53bd2:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_53bf4:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_53c1e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_53c40:
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
  br i1 %5, label %dec_label_pc_53c9b, label %dec_label_pc_53c96

dec_label_pc_53c96:                               ; preds = %dec_label_pc_53c40
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_53c9b

dec_label_pc_53c9b:                               ; preds = %dec_label_pc_53c96, %dec_label_pc_53c40
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_53c9e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_53cb0:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_53ced:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_53d1b:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_53d2e:
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
dec_label_pc_53d70:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_53d84:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIiEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_53da2:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_53dc6:
  %0 = call i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_53de8:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_53e00:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_53e52, label %dec_label_pc_53e38

dec_label_pc_53e38:                               ; preds = %dec_label_pc_53e00
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_53e4d, label %dec_label_pc_53e48

dec_label_pc_53e48:                               ; preds = %dec_label_pc_53e38
  %7 = call i64 @anon2()
  br label %dec_label_pc_53e4d

dec_label_pc_53e4d:                               ; preds = %dec_label_pc_53e48, %dec_label_pc_53e38
  %8 = call i64 @anon3()
  br label %dec_label_pc_53e52

dec_label_pc_53e52:                               ; preds = %dec_label_pc_53e4d, %dec_label_pc_53e00
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_53e6e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_581a6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-46 = alloca i64, align 8
  %stack_var_-108 = alloca i32, align 4
  %stack_var_-104 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIiSaIiEEC2Ev(ptr nonnull %stack_var_-104)
  store i32 0, ptr %stack_var_-108, align 4
  store i64 0, ptr %stack_var_-46, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = bitcast ptr %stack_var_-46 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_5821d, label %dec_label_pc_5820c

dec_label_pc_5820c:                               ; preds = %dec_label_pc_581a6
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %stack_var_-108, align 4
  br label %dec_label_pc_5822c

dec_label_pc_5821d:                               ; preds = %dec_label_pc_581a6
  call void @printLine(ptr @global_var_88646)
  br label %dec_label_pc_5822c

dec_label_pc_5822c:                               ; preds = %dec_label_pc_5821d, %dec_label_pc_5820c
  %8 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-104, ptr nonnull %stack_var_-108)
  %9 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-104, ptr nonnull %stack_var_-108)
  %10 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-104, ptr nonnull %stack_var_-108)
  call void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr nonnull %stack_var_-72, ptr nonnull %stack_var_-104)
  %11 = ptrtoint ptr %stack_var_-72 to i64
  %12 = call i64 @anon1(i64 %11)
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr nonnull %stack_var_-72)
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr nonnull %stack_var_-104)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_582e5, label %dec_label_pc_582e0

dec_label_pc_582e0:                               ; preds = %dec_label_pc_5822c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_582e5

dec_label_pc_582e5:                               ; preds = %dec_label_pc_582e0, %dec_label_pc_5822c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_5836e:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, -2147483648
  br i1 %4, label %dec_label_pc_583c1, label %dec_label_pc_58398

dec_label_pc_58398:                               ; preds = %dec_label_pc_5836e
  %5 = sub i32 0, %3
  %6 = icmp slt i32 %5, 0
  %7 = icmp eq i1 %6, false
  %8 = select i1 %7, i32 %5, i32 %3
  %9 = icmp sgt i32 %8, 46339
  br i1 %9, label %dec_label_pc_583c1, label %dec_label_pc_583ac

dec_label_pc_583ac:                               ; preds = %dec_label_pc_58398
  %10 = mul i32 %3, %3
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_583d1

dec_label_pc_583c1:                               ; preds = %dec_label_pc_58398, %dec_label_pc_5836e
  call void @printLine(ptr @global_var_88658)
  br label %dec_label_pc_583d1

dec_label_pc_583d1:                               ; preds = %dec_label_pc_583c1, %dec_label_pc_583ac
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
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

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

