@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_da44:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_fbc6:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_fbe6:
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

define ptr @_ZSt7forwardIRKPiEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_3c06c:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cf14:
  call void @_ZNSaISt10_List_nodeIPiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cf34:
  call void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPiSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cf54:
  call void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIPiSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cf74:
  call void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cf94:
  call void @_ZNSaISt10_List_nodeIPiEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIPiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cfc0:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cfe0:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIPiSaIS1_EE9push_backERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d00c:
  %0 = call i64 @_ZNSt7__cxx114listIPiSaIS1_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIPiSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIPiSaIS1_EEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d046:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIPiSaIS1_EE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPiEES3_E17_S_select_on_copyERKS4_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIPiEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIPiSaIS1_EE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIPiSaIS1_EE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIPiSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_3d10b, label %dec_label_pc_3d106

dec_label_pc_3d106:                               ; preds = %dec_label_pc_3d046
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d10b

dec_label_pc_3d10b:                               ; preds = %dec_label_pc_3d106, %dec_label_pc_3d046
  ret void
}

define void @_ZNSaISt10_List_nodeIPiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3d112:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3d132:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d1bd:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIPiSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d1c2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIPiEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3d20c, label %dec_label_pc_3d207

dec_label_pc_3d207:                               ; preds = %dec_label_pc_3d1c2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d20c

dec_label_pc_3d20c:                               ; preds = %dec_label_pc_3d207, %dec_label_pc_3d1c2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPiSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3d20e:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPiEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIPiSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIPiEES3_E17_S_select_on_copyERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d26f:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPiEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_3d2b9, label %dec_label_pc_3d2b4

dec_label_pc_3d2b4:                               ; preds = %dec_label_pc_3d26f
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d2b9

dec_label_pc_3d2b9:                               ; preds = %dec_label_pc_3d2b4, %dec_label_pc_3d26f
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIPiSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d2c0:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EEC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d2d2:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPiEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIPiSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d30a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3d357, label %dec_label_pc_3d352

dec_label_pc_3d352:                               ; preds = %dec_label_pc_3d30a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d357

dec_label_pc_3d357:                               ; preds = %dec_label_pc_3d352, %dec_label_pc_3d30a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIPiSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d35a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIPiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3d3a4, label %dec_label_pc_3d39f

dec_label_pc_3d39f:                               ; preds = %dec_label_pc_3d35a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d3a4

dec_label_pc_3d3a4:                               ; preds = %dec_label_pc_3d39f, %dec_label_pc_3d35a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIPiSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3d3a6:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIPiES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3d3c0.lr.ph, label %dec_label_pc_3d401

dec_label_pc_3d3c0.lr.ph:                         ; preds = %dec_label_pc_3d3a6
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_3d3c0

dec_label_pc_3d3c0:                               ; preds = %dec_label_pc_3d3c0.lr.ph, %dec_label_pc_3d3c0
  %5 = call i64 @_ZNKSt20_List_const_iteratorIPiEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIPiSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIPiEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIPiES3_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_3d3c0, label %dec_label_pc_3d401

dec_label_pc_3d401:                               ; preds = %dec_label_pc_3d3c0, %dec_label_pc_3d3a6
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3d406:
  ret void
}

define i64 @_ZNSt10_List_nodeIPiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d416:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d438:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIPiEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d4a4:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIPiSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3d4c2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPiEEEC2ERS3_PS2_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKPiEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIPiE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIPiEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPiEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPiEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_3d585, label %dec_label_pc_3d580

dec_label_pc_3d580:                               ; preds = %dec_label_pc_3d4c2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d585

dec_label_pc_3d585:                               ; preds = %dec_label_pc_3d580, %dec_label_pc_3d4c2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3d58c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPiEEE37select_on_container_copy_constructionERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d5b6:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIPiEEC2ERKS2_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIPiEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3d5e3:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE10_List_implC2EOSaISt10_List_nodeIS1_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d5f6:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIPiEEEONSt16remove_referenceIT_E4typeEOS6_(ptr %0)
  call void @_ZNSaISt10_List_nodeIPiEEC2ERKS2_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIPiEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d638:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIPiES3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d656:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIPiEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d67c:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIPiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d6a0:
  %0 = call i64 @_ZNKSt10_List_nodeIPiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIPiSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3d6c2:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKPiEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIPiSaIS1_EE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIPiSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIPiSaIS1_EE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPiE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d71a:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIPiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPiEEE10deallocateERS3_PS2_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3d74b:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEE10deallocateEPS3_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIPiSaIS1_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d77e:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPiEEE8allocateERS3_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPiEEEC2ERS3_PS2_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3d7a2:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIPiEEEPT_RS4_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIPiEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3d7dc:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_3d818, label %dec_label_pc_3d7f9

dec_label_pc_3d7f9:                               ; preds = %dec_label_pc_3d7dc
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPiEEE10deallocateERS3_PS2_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_3d818

dec_label_pc_3d818:                               ; preds = %dec_label_pc_3d7f9, %dec_label_pc_3d7dc
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIPiEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3d81b:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPiEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIPiEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3d858:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIPiEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d87a:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEEC2ERKS4_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIPiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d8a4:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIPiSaIS1_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d8c6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIPiSaIS1_EE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIPiEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIPiEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3d921, label %dec_label_pc_3d91c

dec_label_pc_3d91c:                               ; preds = %dec_label_pc_3d8c6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d921

dec_label_pc_3d921:                               ; preds = %dec_label_pc_3d91c, %dec_label_pc_3d8c6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIPiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d924:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEE10deallocateEPS3_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3d936:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIPiEEE8allocateERS3_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_3d973:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIPiEEEPT_RS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3d9a1:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3d9b4:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPiEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d9f8:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPiE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3da0c:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIPiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIPiEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_3da2a:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIPiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3da4e:
  %0 = call i64 @_ZNSt10_List_nodeIPiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPiEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3da70:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIPiEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3da88:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIPiEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_3dada, label %dec_label_pc_3dac0

dec_label_pc_3dac0:                               ; preds = %dec_label_pc_3da88
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_3dad5, label %dec_label_pc_3dad0

dec_label_pc_3dad0:                               ; preds = %dec_label_pc_3dac0
  %7 = call i64 @anon2()
  br label %dec_label_pc_3dad5

dec_label_pc_3dad5:                               ; preds = %dec_label_pc_3dad0, %dec_label_pc_3dac0
  %8 = call i64 @anon3()
  br label %dec_label_pc_3dada

dec_label_pc_3dada:                               ; preds = %dec_label_pc_3dad5, %dec_label_pc_3da88
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIPiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3daf6:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4c7be:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIPiSaIS1_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call i64 @_Znam(i64 200)
  store i64 %1, ptr %stack_var_-96, align 8
  %2 = bitcast ptr %stack_var_-96 to ptr
  %3 = call i64 @_ZNSt7__cxx114listIPiSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %2)
  %4 = call i64 @_ZNSt7__cxx114listIPiSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %2)
  %5 = call i64 @_ZNSt7__cxx114listIPiSaIS1_EE9push_backERKS1_(ptr nonnull %stack_var_-88, ptr nonnull %2)
  call void @_ZNSt7__cxx114listIPiSaIS1_EEC2ERKS3_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %6 = ptrtoint ptr %stack_var_-56 to i64
  %7 = call i64 @anon1(i64 %6)
  call void @_ZNSt7__cxx114listIPiSaIS1_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIPiSaIS1_EED2Ev(ptr nonnull %stack_var_-88)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_4c8b5, label %dec_label_pc_4c8b0

dec_label_pc_4c8b0:                               ; preds = %dec_label_pc_4c7be
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4c8b5

dec_label_pc_4c8b5:                               ; preds = %dec_label_pc_4c8b0, %dec_label_pc_4c7be
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_4c9c8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = inttoptr i64 %arg1 to ptr
  %2 = call i64 @_ZNSt7__cxx114listIPiSaIS1_EE4backEv(ptr %1)
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @memmove(ptr %6, ptr nonnull %stack_var_-424, i32 400)
  %8 = inttoptr i64 %4 to ptr
  %9 = load i32, ptr %8, align 4
  call void @printIntLine(i32 %9)
  %10 = icmp eq i64 %4, 0
  br i1 %10, label %dec_label_pc_4ca64, label %dec_label_pc_4ca55

dec_label_pc_4ca55:                               ; preds = %dec_label_pc_4c9c8
  %11 = ptrtoint ptr %stack_var_-424 to i64
  %12 = and i64 %11, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %6, ptr %13)
  br label %dec_label_pc_4ca64

dec_label_pc_4ca64:                               ; preds = %dec_label_pc_4ca55, %dec_label_pc_4c9c8
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_4ca79, label %dec_label_pc_4ca74

dec_label_pc_4ca74:                               ; preds = %dec_label_pc_4ca64
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4ca79

dec_label_pc_4ca79:                               ; preds = %dec_label_pc_4ca74, %dec_label_pc_4ca64
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

