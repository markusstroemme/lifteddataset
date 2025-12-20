@global_var_34bf2 = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_dc35:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_169fc:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_16a1c:
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

define ptr @_ZSt7forwardIRKPdEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_1be92:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1c9fc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIPdSaIS1_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call ptr @malloc(i32 8)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-96, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1ca4d, label %dec_label_pc_1ca43

dec_label_pc_1ca43:                               ; preds = %dec_label_pc_1c9fc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1ca4d:                               ; preds = %dec_label_pc_1c9fc
  %5 = call i128 @__asm_movsd(i64 9098483789791991595)
  %6 = call i64 @__asm_movsd.211(i128 %5)
  store i64 %6, ptr %1, align 8
  %7 = bitcast ptr %stack_var_-96 to ptr
  %8 = call i64 @_ZNSt7__cxx114listIPdSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %7)
  %9 = call i64 @_ZNSt7__cxx114listIPdSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %7)
  %10 = call i64 @_ZNSt7__cxx114listIPdSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %7)
  call void @_ZNSt7__cxx114listIPdSaIS1_EEC2ERKS3_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %11 = ptrtoint ptr %stack_var_-56 to i64
  %12 = call i64 @anon1(i64 %11)
  call void @_ZNSt7__cxx114listIPdSaIS1_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIPdSaIS1_EED2Ev(ptr nonnull %stack_var_-88)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_1cb16, label %dec_label_pc_1cb11

dec_label_pc_1cb11:                               ; preds = %dec_label_pc_1ca4d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1cb16

dec_label_pc_1cb16:                               ; preds = %dec_label_pc_1cb11, %dec_label_pc_1ca4d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1cc4c:
  call void @_ZNSaISt10_List_nodeIPdEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1cc6c:
  call void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPdSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1cc8c:
  call void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPdSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1ccac:
  call void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1cccc:
  call void @_ZNSaISt10_List_nodeIPdEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIPdEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1ccf8:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1cd18:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIPdSaIS1_EE9push_backERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1cd44:
  %0 = call i64 @_ZNSt7__cxx114listIPdSaIS1_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIPdSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIPdSaIS1_EEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1cd7e:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIPdSaIS1_EE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPdEES3_E17_S_select_on_copyERKS4_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIPdEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIPdSaIS1_EE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIPdSaIS1_EE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIPdSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_1ce43, label %dec_label_pc_1ce3e

dec_label_pc_1ce3e:                               ; preds = %dec_label_pc_1cd7e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ce43

dec_label_pc_1ce43:                               ; preds = %dec_label_pc_1ce3e, %dec_label_pc_1cd7e
  ret void
}

define void @_ZNSaISt10_List_nodeIPdEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1ce4a:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1ce6a:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_1cef5:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIPdSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_1cefa:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIPdEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1cf44, label %dec_label_pc_1cf3f

dec_label_pc_1cf3f:                               ; preds = %dec_label_pc_1cefa
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1cf44

dec_label_pc_1cf44:                               ; preds = %dec_label_pc_1cf3f, %dec_label_pc_1cefa
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPdSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1cf46:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPdEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIPdSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPdEES3_E17_S_select_on_copyERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1cfa7:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPdEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_1cff1, label %dec_label_pc_1cfec

dec_label_pc_1cfec:                               ; preds = %dec_label_pc_1cfa7
  call void @__stack_chk_fail()
  br label %dec_label_pc_1cff1

dec_label_pc_1cff1:                               ; preds = %dec_label_pc_1cfec, %dec_label_pc_1cfa7
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIPdSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_1cff8:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d00a:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPdEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIPdSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d042:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPdEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1d08f, label %dec_label_pc_1d08a

dec_label_pc_1d08a:                               ; preds = %dec_label_pc_1d042
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d08f

dec_label_pc_1d08f:                               ; preds = %dec_label_pc_1d08a, %dec_label_pc_1d042
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIPdSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d092:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPdEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1d0dc, label %dec_label_pc_1d0d7

dec_label_pc_1d0d7:                               ; preds = %dec_label_pc_1d092
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d0dc

dec_label_pc_1d0dc:                               ; preds = %dec_label_pc_1d0d7, %dec_label_pc_1d092
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPdSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1d0de:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIPdES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1d0f8.lr.ph, label %dec_label_pc_1d139

dec_label_pc_1d0f8.lr.ph:                         ; preds = %dec_label_pc_1d0de
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_1d0f8

dec_label_pc_1d0f8:                               ; preds = %dec_label_pc_1d0f8.lr.ph, %dec_label_pc_1d0f8
  %5 = call i64 @_ZNKSt20_List_const_iteratorIPdEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIPdSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIPdEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIPdES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_1d0f8, label %dec_label_pc_1d139

dec_label_pc_1d139:                               ; preds = %dec_label_pc_1d0f8, %dec_label_pc_1d0de
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1d13e:
  ret void
}

define i64 @_ZNSt10_List_nodeIPdE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d14e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPdE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d170:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIPdEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d1dc:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIPdSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_1d1fa:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPdEEEC2ERS3_PS2_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKPdEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIPdE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIPdEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPdEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPdEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_1d2bd, label %dec_label_pc_1d2b8

dec_label_pc_1d2b8:                               ; preds = %dec_label_pc_1d1fa
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d2bd

dec_label_pc_1d2bd:                               ; preds = %dec_label_pc_1d2b8, %dec_label_pc_1d1fa
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_1d2c4:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPdEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d2ee:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIPdEEC2ERKS2_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIPdEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %arg1) local_unnamed_addr {
dec_label_pc_1d31b:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d32e:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPdEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSaISt10_List_nodeIPdEEC2ERKS2_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIPdEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d370:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIPdES3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d38e:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIPdEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d3b4:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIPdEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d3d8:
  %0 = call i64 @_ZNKSt10_List_nodeIPdE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIPdSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_1d3fa:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKPdEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIPdSaIS1_EE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIPdSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIPdSaIS1_EE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPdE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d452:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPdE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPdEEE10deallocateERS3_PS2_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1d483:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEE10deallocateEPS3_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIPdSaIS1_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d4b6:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPdEEE8allocateERS3_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPdEEEC2ERS3_PS2_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_1d4da:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIPdEEEPT_RS4_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPdEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_1d514:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_1d550, label %dec_label_pc_1d531

dec_label_pc_1d531:                               ; preds = %dec_label_pc_1d514
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPdEEE10deallocateERS3_PS2_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_1d550

dec_label_pc_1d550:                               ; preds = %dec_label_pc_1d531, %dec_label_pc_1d514
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIPdEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1d553:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPdEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPdEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_1d590:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIPdEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d5b2:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEEC2ERKS4_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIPdE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d5dc:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPdE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIPdSaIS1_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d5fe:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIPdSaIS1_EE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIPdEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIPdEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1d659, label %dec_label_pc_1d654

dec_label_pc_1d654:                               ; preds = %dec_label_pc_1d5fe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d659

dec_label_pc_1d659:                               ; preds = %dec_label_pc_1d654, %dec_label_pc_1d5fe
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPdE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d65c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEE10deallocateEPS3_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1d66e:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPdEEE8allocateERS3_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_1d6ab:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIPdEEEPT_RS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_1d6d9:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1d6ec:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPdEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d730:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPdE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d744:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPdE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIPdEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d762:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIPdEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d786:
  %0 = call i64 @_ZNSt10_List_nodeIPdE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPdEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d7a8:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPdEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_1d7c0:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPdEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_1d812, label %dec_label_pc_1d7f8

dec_label_pc_1d7f8:                               ; preds = %dec_label_pc_1d7c0
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_1d80d, label %dec_label_pc_1d808

dec_label_pc_1d808:                               ; preds = %dec_label_pc_1d7f8
  %7 = call i64 @anon2()
  br label %dec_label_pc_1d80d

dec_label_pc_1d80d:                               ; preds = %dec_label_pc_1d808, %dec_label_pc_1d7f8
  %8 = call i64 @anon3()
  br label %dec_label_pc_1d812

dec_label_pc_1d812:                               ; preds = %dec_label_pc_1d80d, %dec_label_pc_1d7c0
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPdE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_1d82e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_1d840:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIPdSaIS1_EE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = call i128 @__asm_movq(i64 %5)
  %7 = trunc i128 %6 to i64
  %8 = bitcast i64 %7 to double
  call void @printDoubleLine(double %8)
  call void @free(ptr %4)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printDoubleLine(double %doubleNumber) local_unnamed_addr {
dec_label_pc_2bad7:
  %0 = fptrunc double %doubleNumber to float
  %1 = bitcast float %0 to i32
  %2 = sext i32 %1 to i128
  %3 = call i64 @__asm_movsd.211(i128 %2)
  %4 = call i128 @__asm_movq(i64 %3)
  %5 = trunc i128 %4 to i64
  %6 = bitcast i64 %5 to double
  %7 = call i32 (ptr, ...) @printf(ptr @global_var_34bf2, double %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare i64 @__asm_movsd.211(i128) local_unnamed_addr

declare i128 @__asm_movq(i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

