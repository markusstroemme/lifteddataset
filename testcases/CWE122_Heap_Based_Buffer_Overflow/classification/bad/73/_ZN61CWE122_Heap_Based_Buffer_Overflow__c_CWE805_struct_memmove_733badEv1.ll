@global_var_7c84a = external constant [10 x i8]
@0 = external global i32
@global_var_320 = external constant i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_41846:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4398e:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_439ae:
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

define ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_5cd82:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5dc96:
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5dcb6:
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5dcd6:
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5dcf6:
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5dd16:
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5dd42:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5dd62:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5dd8e:
  %0 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5ddc8:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP14_twoIntsStructEES4_E17_S_select_on_copyERKS5_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_5de8d, label %dec_label_pc_5de88

dec_label_pc_5de88:                               ; preds = %dec_label_pc_5ddc8
  call void @__stack_chk_fail()
  br label %dec_label_pc_5de8d

dec_label_pc_5de8d:                               ; preds = %dec_label_pc_5de88, %dec_label_pc_5ddc8
  ret void
}

define void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5de94:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5deb4:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_5df3f:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_5df44:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIP14_twoIntsStructEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_5df8e, label %dec_label_pc_5df89

dec_label_pc_5df89:                               ; preds = %dec_label_pc_5df44
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5df8e

dec_label_pc_5df8e:                               ; preds = %dec_label_pc_5df89, %dec_label_pc_5df44
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5df90:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP14_twoIntsStructEES4_E17_S_select_on_copyERKS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5dff1:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_5e03b, label %dec_label_pc_5e036

dec_label_pc_5e036:                               ; preds = %dec_label_pc_5dff1
  call void @__stack_chk_fail()
  br label %dec_label_pc_5e03b

dec_label_pc_5e03b:                               ; preds = %dec_label_pc_5e036, %dec_label_pc_5dff1
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e042:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5e054:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP14_twoIntsStructEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e08c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP14_twoIntsStructEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_5e0d9, label %dec_label_pc_5e0d4

dec_label_pc_5e0d4:                               ; preds = %dec_label_pc_5e08c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5e0d9

dec_label_pc_5e0d9:                               ; preds = %dec_label_pc_5e0d4, %dec_label_pc_5e08c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e0dc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP14_twoIntsStructEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_5e126, label %dec_label_pc_5e121

dec_label_pc_5e121:                               ; preds = %dec_label_pc_5e0dc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5e126

dec_label_pc_5e126:                               ; preds = %dec_label_pc_5e121, %dec_label_pc_5e0dc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5e128:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIP14_twoIntsStructES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_5e142.lr.ph, label %dec_label_pc_5e183

dec_label_pc_5e142.lr.ph:                         ; preds = %dec_label_pc_5e128
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_5e142

dec_label_pc_5e142:                               ; preds = %dec_label_pc_5e142.lr.ph, %dec_label_pc_5e142
  %5 = call i64 @_ZNKSt20_List_const_iteratorIP14_twoIntsStructEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIP14_twoIntsStructEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIP14_twoIntsStructES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_5e142, label %dec_label_pc_5e183

dec_label_pc_5e183:                               ; preds = %dec_label_pc_5e142, %dec_label_pc_5e128
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5e188:
  ret void
}

define i64 @_ZNSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e198:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e1ba:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIP14_twoIntsStructEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5e226:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_5e244:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEC2ERS4_PS3_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_5e307, label %dec_label_pc_5e302

dec_label_pc_5e302:                               ; preds = %dec_label_pc_5e244
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5e307

dec_label_pc_5e307:                               ; preds = %dec_label_pc_5e302, %dec_label_pc_5e244
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_5e30e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5e338:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2ERKS3_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIP14_twoIntsStructEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5e365:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5e378:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP14_twoIntsStructEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2ERKS3_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIP14_twoIntsStructEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5e3ba:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIP14_twoIntsStructES4_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5e3d8:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIP14_twoIntsStructEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e3fe:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIP14_twoIntsStructEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e422:
  %0 = call i64 @_ZNKSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_5e444:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e49c:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE10deallocateERS4_PS3_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5e4cd:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE10deallocateEPS4_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e500:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE8allocateERS4_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEC2ERS4_PS3_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5e524:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIP14_twoIntsStructEEEPT_RS5_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5e55e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_5e59a, label %dec_label_pc_5e57b

dec_label_pc_5e57b:                               ; preds = %dec_label_pc_5e55e
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE10deallocateERS4_PS3_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_5e59a

dec_label_pc_5e59a:                               ; preds = %dec_label_pc_5e57b, %dec_label_pc_5e55e
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5e59d:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_5e5da:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5e5fc:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2ERKS5_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e626:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e648:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIP14_twoIntsStructEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIP14_twoIntsStructEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_5e6a3, label %dec_label_pc_5e69e

dec_label_pc_5e69e:                               ; preds = %dec_label_pc_5e648
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5e6a3

dec_label_pc_5e6a3:                               ; preds = %dec_label_pc_5e69e, %dec_label_pc_5e648
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e6a6:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE10deallocateEPS4_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5e6b8:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE8allocateERS4_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_5e6f5:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIP14_twoIntsStructEEEPT_RS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5e723:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5e736:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2ERKS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5e77a:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e78e:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIP14_twoIntsStructEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e7ac:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIP14_twoIntsStructEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e7d0:
  %0 = call i64 @_ZNSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e7f2:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5e80a:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_5e85c, label %dec_label_pc_5e842

dec_label_pc_5e842:                               ; preds = %dec_label_pc_5e80a
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_5e857, label %dec_label_pc_5e852

dec_label_pc_5e852:                               ; preds = %dec_label_pc_5e842
  %7 = call i64 @anon2()
  br label %dec_label_pc_5e857

dec_label_pc_5e857:                               ; preds = %dec_label_pc_5e852, %dec_label_pc_5e842
  %8 = call i64 @anon3()
  br label %dec_label_pc_5e85c

dec_label_pc_5e85c:                               ; preds = %dec_label_pc_5e857, %dec_label_pc_5e80a
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_5e878:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6438e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call ptr @malloc(i32 400)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-96, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_643df, label %dec_label_pc_643d5

dec_label_pc_643d5:                               ; preds = %dec_label_pc_6438e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_643df:                               ; preds = %dec_label_pc_6438e
  %5 = bitcast ptr %stack_var_-96 to ptr
  %6 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %5)
  %7 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %5)
  %8 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %5)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2ERKS4_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %9 = ptrtoint ptr %stack_var_-56 to i64
  %10 = call i64 @anon1(i64 %9)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EED2Ev(ptr nonnull %stack_var_-88)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_64498, label %dec_label_pc_64493

dec_label_pc_64493:                               ; preds = %dec_label_pc_643df
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_64498

dec_label_pc_64498:                               ; preds = %dec_label_pc_64493, %dec_label_pc_643df
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_645be:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE4backEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_64609

dec_label_pc_64609:                               ; preds = %dec_label_pc_64609, %dec_label_pc_645be
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %0
  %8 = add i64 %7, -816
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %7, -812
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_6463f, label %dec_label_pc_64609

dec_label_pc_6463f:                               ; preds = %dec_label_pc_64609
  %13 = inttoptr i64 %5 to ptr
  %14 = inttoptr i64 %5 to ptr
  %15 = call ptr @memmove(ptr %14, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %13)
  call void @free(ptr %14)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_64690, label %dec_label_pc_6468b

dec_label_pc_6468b:                               ; preds = %dec_label_pc_6463f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_64690

dec_label_pc_64690:                               ; preds = %dec_label_pc_6468b, %dec_label_pc_6463f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_65a35:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_7c84a, i64 %7, i64 %6)
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

