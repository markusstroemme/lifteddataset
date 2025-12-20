@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_6fdbf:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_71eee:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_71f0e:
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

define ptr @_ZSt7forwardIRKPvEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_77c5e:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_78a24:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIPvSaIS1_EEC2Ev(ptr nonnull %stack_var_-88)
  store i64 0, ptr %stack_var_-104, align 8
  %1 = call ptr @malloc(i32 50)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_78a73, label %dec_label_pc_78a69

dec_label_pc_78a69:                               ; preds = %dec_label_pc_78a24
  call void @exit(i32 -1)
  unreachable

dec_label_pc_78a73:                               ; preds = %dec_label_pc_78a24
  %4 = ptrtoint ptr %1 to i64
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = add i64 %4, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store i64 %4, ptr %stack_var_-104, align 8
  %8 = bitcast ptr %stack_var_-104 to ptr
  %9 = call i64 @_ZNSt7__cxx114listIPvSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %8)
  %10 = call i64 @_ZNSt7__cxx114listIPvSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %8)
  %11 = call i64 @_ZNSt7__cxx114listIPvSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %8)
  call void @_ZNSt7__cxx114listIPvSaIS1_EEC2ERKS3_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %12 = ptrtoint ptr %stack_var_-56 to i64
  %13 = call i64 @anon1(i64 %12)
  call void @_ZNSt7__cxx114listIPvSaIS1_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIPvSaIS1_EED2Ev(ptr nonnull %stack_var_-88)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_78b55, label %dec_label_pc_78b50

dec_label_pc_78b50:                               ; preds = %dec_label_pc_78a73
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_78b55

dec_label_pc_78b55:                               ; preds = %dec_label_pc_78b50, %dec_label_pc_78a73
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_78cac:
  call void @_ZNSaISt10_List_nodeIPvEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_78ccc:
  call void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPvSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_78cec:
  call void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPvSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_78d0c:
  call void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_78d2c:
  call void @_ZNSaISt10_List_nodeIPvEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIPvEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_78d58:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_78d78:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIPvSaIS1_EE9push_backERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_78da4:
  %0 = call i64 @_ZNSt7__cxx114listIPvSaIS1_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIPvSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIPvSaIS1_EEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_78dde:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIPvSaIS1_EE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPvEES3_E17_S_select_on_copyERKS4_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIPvEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIPvSaIS1_EE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIPvSaIS1_EE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIPvSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_78ea3, label %dec_label_pc_78e9e

dec_label_pc_78e9e:                               ; preds = %dec_label_pc_78dde
  call void @__stack_chk_fail()
  br label %dec_label_pc_78ea3

dec_label_pc_78ea3:                               ; preds = %dec_label_pc_78e9e, %dec_label_pc_78dde
  ret void
}

define void @_ZNSaISt10_List_nodeIPvEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_78eaa:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_78eca:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_78f55:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIPvSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_78f5a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIPvEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_78fa4, label %dec_label_pc_78f9f

dec_label_pc_78f9f:                               ; preds = %dec_label_pc_78f5a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_78fa4

dec_label_pc_78fa4:                               ; preds = %dec_label_pc_78f9f, %dec_label_pc_78f5a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPvSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_78fa6:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPvEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIPvSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPvEES3_E17_S_select_on_copyERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_79007:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPvEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_79051, label %dec_label_pc_7904c

dec_label_pc_7904c:                               ; preds = %dec_label_pc_79007
  call void @__stack_chk_fail()
  br label %dec_label_pc_79051

dec_label_pc_79051:                               ; preds = %dec_label_pc_7904c, %dec_label_pc_79007
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIPvSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_79058:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7906a:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPvEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIPvSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_790a2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPvEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_790ef, label %dec_label_pc_790ea

dec_label_pc_790ea:                               ; preds = %dec_label_pc_790a2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_790ef

dec_label_pc_790ef:                               ; preds = %dec_label_pc_790ea, %dec_label_pc_790a2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIPvSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_790f2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPvEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7913c, label %dec_label_pc_79137

dec_label_pc_79137:                               ; preds = %dec_label_pc_790f2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7913c

dec_label_pc_7913c:                               ; preds = %dec_label_pc_79137, %dec_label_pc_790f2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPvSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7913e:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIPvES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_79158.lr.ph, label %dec_label_pc_79199

dec_label_pc_79158.lr.ph:                         ; preds = %dec_label_pc_7913e
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_79158

dec_label_pc_79158:                               ; preds = %dec_label_pc_79158.lr.ph, %dec_label_pc_79158
  %5 = call i64 @_ZNKSt20_List_const_iteratorIPvEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIPvSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIPvEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIPvES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_79158, label %dec_label_pc_79199

dec_label_pc_79199:                               ; preds = %dec_label_pc_79158, %dec_label_pc_7913e
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7919e:
  ret void
}

define i64 @_ZNSt10_List_nodeIPvE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_791ae:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPvE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_791d0:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIPvEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7923c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIPvSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7925a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPvEEEC2ERS3_PS2_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKPvEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIPvE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIPvEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPvEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPvEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_7931d, label %dec_label_pc_79318

dec_label_pc_79318:                               ; preds = %dec_label_pc_7925a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7931d

dec_label_pc_7931d:                               ; preds = %dec_label_pc_79318, %dec_label_pc_7925a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_79324:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPvEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7934e:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIPvEEC2ERKS2_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIPvEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7937b:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7938e:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPvEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSaISt10_List_nodeIPvEEC2ERKS2_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIPvEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_793d0:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIPvES3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_793ee:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIPvEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_79414:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIPvEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_79438:
  %0 = call i64 @_ZNKSt10_List_nodeIPvE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIPvSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7945a:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKPvEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIPvSaIS1_EE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIPvSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIPvSaIS1_EE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPvE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_794b2:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPvE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPvEEE10deallocateERS3_PS2_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_794e3:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE10deallocateEPS3_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIPvSaIS1_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_79516:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPvEEE8allocateERS3_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPvEEEC2ERS3_PS2_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7953a:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIPvEEEPT_RS4_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPvEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_79574:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_795b0, label %dec_label_pc_79591

dec_label_pc_79591:                               ; preds = %dec_label_pc_79574
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPvEEE10deallocateERS3_PS2_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_795b0

dec_label_pc_795b0:                               ; preds = %dec_label_pc_79591, %dec_label_pc_79574
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIPvEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_795b3:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPvEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPvEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_795f0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIPvEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_79612:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEEC2ERKS4_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIPvE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7963c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPvE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIPvSaIS1_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_7965e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIPvSaIS1_EE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIPvEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIPvEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_796b9, label %dec_label_pc_796b4

dec_label_pc_796b4:                               ; preds = %dec_label_pc_7965e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_796b9

dec_label_pc_796b9:                               ; preds = %dec_label_pc_796b4, %dec_label_pc_7965e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPvE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_796bc:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE10deallocateEPS3_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_796ce:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPvEEE8allocateERS3_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_7970b:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIPvEEEPT_RS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_79739:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7974c:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPvEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_79790:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPvE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_797a4:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPvE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIPvEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_797c2:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIPvEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_797e6:
  %0 = call i64 @_ZNSt10_List_nodeIPvE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_79808:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_79820:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPvEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_79872, label %dec_label_pc_79858

dec_label_pc_79858:                               ; preds = %dec_label_pc_79820
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_7986d, label %dec_label_pc_79868

dec_label_pc_79868:                               ; preds = %dec_label_pc_79858
  %7 = call i64 @anon2()
  br label %dec_label_pc_7986d

dec_label_pc_7986d:                               ; preds = %dec_label_pc_79868, %dec_label_pc_79858
  %8 = call i64 @anon3()
  br label %dec_label_pc_79872

dec_label_pc_79872:                               ; preds = %dec_label_pc_7986d, %dec_label_pc_79820
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPvE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7988e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_7992b:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIPvSaIS1_EE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = call i32 @strlen(ptr %4)
  %6 = add i32 %5, 1
  %7 = call ptr @calloc(i32 %6, i32 1)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_79988, label %dec_label_pc_7997e

dec_label_pc_7997e:                               ; preds = %dec_label_pc_7992b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_79988:                               ; preds = %dec_label_pc_7992b
  %10 = bitcast ptr %7 to ptr
  %11 = call ptr @strcpy(ptr %10, ptr %4)
  call void @printLine(ptr %10)
  call void @free(ptr %7)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @calloc(i32, i32) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

