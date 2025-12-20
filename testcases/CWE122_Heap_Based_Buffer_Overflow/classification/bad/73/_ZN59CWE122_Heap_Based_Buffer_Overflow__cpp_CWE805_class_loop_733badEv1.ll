@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_cc3d:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_ed9e:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_edbe:
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

define ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_3e324:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3f01e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call i64 @_Znam(i64 400)
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
  br i1 %9, label %dec_label_pc_3f115, label %dec_label_pc_3f110

dec_label_pc_3f110:                               ; preds = %dec_label_pc_3f01e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f115

dec_label_pc_3f115:                               ; preds = %dec_label_pc_3f110, %dec_label_pc_3f01e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f228:
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f248:
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f268:
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f288:
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f2a8:
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f2d4:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f2f4:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f320:
  %0 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f35a:
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
  br i1 %8, label %dec_label_pc_3f41f, label %dec_label_pc_3f41a

dec_label_pc_3f41a:                               ; preds = %dec_label_pc_3f35a
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f41f

dec_label_pc_3f41f:                               ; preds = %dec_label_pc_3f41a, %dec_label_pc_3f35a
  ret void
}

define void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f426:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f446:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f4d1:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f4d6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIP12TwoIntsClassEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3f520, label %dec_label_pc_3f51b

dec_label_pc_3f51b:                               ; preds = %dec_label_pc_3f4d6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f520

dec_label_pc_3f520:                               ; preds = %dec_label_pc_3f51b, %dec_label_pc_3f4d6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3f522:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP12TwoIntsClassEES4_E17_S_select_on_copyERKS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f583:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_3f5cd, label %dec_label_pc_3f5c8

dec_label_pc_3f5c8:                               ; preds = %dec_label_pc_3f583
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f5cd

dec_label_pc_3f5cd:                               ; preds = %dec_label_pc_3f5c8, %dec_label_pc_3f583
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f5d4:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f5e6:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f61e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3f66b, label %dec_label_pc_3f666

dec_label_pc_3f666:                               ; preds = %dec_label_pc_3f61e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f66b

dec_label_pc_3f66b:                               ; preds = %dec_label_pc_3f666, %dec_label_pc_3f61e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f66e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3f6b8, label %dec_label_pc_3f6b3

dec_label_pc_3f6b3:                               ; preds = %dec_label_pc_3f66e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f6b8

dec_label_pc_3f6b8:                               ; preds = %dec_label_pc_3f6b3, %dec_label_pc_3f66e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3f6ba:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIP12TwoIntsClassES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3f6d4.lr.ph, label %dec_label_pc_3f715

dec_label_pc_3f6d4.lr.ph:                         ; preds = %dec_label_pc_3f6ba
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_3f6d4

dec_label_pc_3f6d4:                               ; preds = %dec_label_pc_3f6d4.lr.ph, %dec_label_pc_3f6d4
  %5 = call i64 @_ZNKSt20_List_const_iteratorIP12TwoIntsClassEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIP12TwoIntsClassEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIP12TwoIntsClassES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_3f6d4, label %dec_label_pc_3f715

dec_label_pc_3f715:                               ; preds = %dec_label_pc_3f6d4, %dec_label_pc_3f6ba
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3f71a:
  ret void
}

define i64 @_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f72a:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f74c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIP12TwoIntsClassEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f7b8:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3f7d6:
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
  br i1 %12, label %dec_label_pc_3f899, label %dec_label_pc_3f894

dec_label_pc_3f894:                               ; preds = %dec_label_pc_3f7d6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3f899

dec_label_pc_3f899:                               ; preds = %dec_label_pc_3f894, %dec_label_pc_3f7d6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3f8a0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f8ca:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3f8f7:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f90a:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f94c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIP12TwoIntsClassES4_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3f96a:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIP12TwoIntsClassEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f990:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIP12TwoIntsClassEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3f9b4:
  %0 = call i64 @_ZNKSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3f9d6:
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
dec_label_pc_3fa2e:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE10deallocateERS4_PS3_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3fa5f:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE10deallocateEPS4_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fa92:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE8allocateERS4_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEC2ERS4_PS3_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3fab6:
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
dec_label_pc_3faf0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_3fb2c, label %dec_label_pc_3fb0d

dec_label_pc_3fb0d:                               ; preds = %dec_label_pc_3faf0
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE10deallocateERS4_PS3_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_3fb2c

dec_label_pc_3fb2c:                               ; preds = %dec_label_pc_3fb0d, %dec_label_pc_3faf0
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3fb2f:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3fb6c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3fb8e:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2ERKS5_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fbb8:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fbda:
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
  br i1 %5, label %dec_label_pc_3fc35, label %dec_label_pc_3fc30

dec_label_pc_3fc30:                               ; preds = %dec_label_pc_3fbda
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3fc35

dec_label_pc_3fc35:                               ; preds = %dec_label_pc_3fc30, %dec_label_pc_3fbda
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fc38:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE10deallocateEPS4_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3fc4a:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE8allocateERS4_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_3fc87:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIP12TwoIntsClassEEEPT_RS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3fcb5:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3fcc8:
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
dec_label_pc_3fd0c:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fd20:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIP12TwoIntsClassEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fd3e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIP12TwoIntsClassEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fd62:
  %0 = call i64 @_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fd84:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3fd9c:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP12TwoIntsClassEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_3fdee, label %dec_label_pc_3fdd4

dec_label_pc_3fdd4:                               ; preds = %dec_label_pc_3fd9c
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_3fde9, label %dec_label_pc_3fde4

dec_label_pc_3fde4:                               ; preds = %dec_label_pc_3fdd4
  %7 = call i64 @anon2()
  br label %dec_label_pc_3fde9

dec_label_pc_3fde9:                               ; preds = %dec_label_pc_3fde4, %dec_label_pc_3fdd4
  %8 = call i64 @anon3()
  br label %dec_label_pc_3fdee

dec_label_pc_3fdee:                               ; preds = %dec_label_pc_3fde9, %dec_label_pc_3fd9c
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fe0a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_3fe1c:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = inttoptr i64 %arg1 to ptr
  %5 = call i64 @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE4backEv(ptr %4)
  %6 = inttoptr i64 %5 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %2, -816
  %9 = add i64 %2, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_3fe67

dec_label_pc_3fe67:                               ; preds = %dec_label_pc_3fe67, %dec_label_pc_3fe1c
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %10 = mul i64 %storemerge13.reload, 8
  %11 = add i64 %10, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 8
  %13 = add i64 %9, %10
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 4
  %15 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond4 = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge13.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_3feaa, label %dec_label_pc_3fe67

dec_label_pc_3feaa:                               ; preds = %dec_label_pc_3fe67, %dec_label_pc_3feaa
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %16 = mul i64 %storemerge2.reload, 8
  %17 = add i64 %16, %7
  %18 = add i64 %16, %8
  %19 = inttoptr i64 %18 to ptr
  %20 = load i64, ptr %19, align 8
  %21 = inttoptr i64 %17 to ptr
  store i64 %20, ptr %21, align 8
  %22 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %22, 100
  store i64 %22, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3fee7, label %dec_label_pc_3feaa

dec_label_pc_3fee7:                               ; preds = %dec_label_pc_3feaa
  %23 = inttoptr i64 %7 to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %25 = icmp eq i64 %7, 0
  br i1 %25, label %dec_label_pc_3ff10, label %dec_label_pc_3ff01

dec_label_pc_3ff01:                               ; preds = %dec_label_pc_3fee7
  %26 = inttoptr i64 %7 to ptr
  %27 = and i64 %1, 4294967295
  %28 = inttoptr i64 %27 to ptr
  call void @_ZdaPv(ptr %26, ptr %28)
  br label %dec_label_pc_3ff10

dec_label_pc_3ff10:                               ; preds = %dec_label_pc_3ff01, %dec_label_pc_3fee7
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %3, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_3ff25, label %dec_label_pc_3ff20

dec_label_pc_3ff20:                               ; preds = %dec_label_pc_3ff10
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3ff25

dec_label_pc_3ff25:                               ; preds = %dec_label_pc_3ff20, %dec_label_pc_3ff10
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_42e9b:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_531bc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

