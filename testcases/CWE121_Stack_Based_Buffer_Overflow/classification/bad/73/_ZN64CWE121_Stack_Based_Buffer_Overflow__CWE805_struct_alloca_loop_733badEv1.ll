@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@0 = external global i32
@global_var_1000 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_73568:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_756bc:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_756dc:
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
dec_label_pc_95fec:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_96cb2:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-112 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-120 to i64
  %1 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2Ev(ptr nonnull %stack_var_-88)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_96d0a

dec_label_pc_96d0a:                               ; preds = %dec_label_pc_96d0a, %dec_label_pc_96cb2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_96d21, label %dec_label_pc_96d0a

dec_label_pc_96d21:                               ; preds = %dec_label_pc_96d0a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_96d8e

dec_label_pc_96d8e:                               ; preds = %dec_label_pc_96d8e, %dec_label_pc_96d21
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_96da5, label %dec_label_pc_96d8e

dec_label_pc_96da5:                               ; preds = %dec_label_pc_96d8e
  %8 = add i64 %4, 15
  %9 = and i64 %8, -16
  store i64 %9, ptr %stack_var_-112, align 8
  %10 = bitcast ptr %stack_var_-112 to ptr
  %11 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %10)
  %12 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %10)
  %13 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr nonnull %stack_var_-88, ptr nonnull %10)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2ERKS4_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %14 = ptrtoint ptr %stack_var_-56 to i64
  %15 = call i64 @anon1(i64 %14)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EED2Ev(ptr nonnull %stack_var_-88)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_96ea3, label %dec_label_pc_96e9e

dec_label_pc_96e9e:                               ; preds = %dec_label_pc_96da5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_96ea3

dec_label_pc_96ea3:                               ; preds = %dec_label_pc_96e9e, %dec_label_pc_96da5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_970b0:
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_970d0:
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_970f0:
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_97110:
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_97130:
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_9715c:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_9717c:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9push_backERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_971a8:
  %0 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_971e2:
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
  br i1 %8, label %dec_label_pc_972a7, label %dec_label_pc_972a2

dec_label_pc_972a2:                               ; preds = %dec_label_pc_971e2
  call void @__stack_chk_fail()
  br label %dec_label_pc_972a7

dec_label_pc_972a7:                               ; preds = %dec_label_pc_972a2, %dec_label_pc_971e2
  ret void
}

define void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_972ae:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_972ce:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_97359:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_9735e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIP14_twoIntsStructEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_973a8, label %dec_label_pc_973a3

dec_label_pc_973a3:                               ; preds = %dec_label_pc_9735e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_973a8

dec_label_pc_973a8:                               ; preds = %dec_label_pc_973a3, %dec_label_pc_9735e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_973aa:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP14_twoIntsStructEES4_E17_S_select_on_copyERKS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_9740b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_97455, label %dec_label_pc_97450

dec_label_pc_97450:                               ; preds = %dec_label_pc_9740b
  call void @__stack_chk_fail()
  br label %dec_label_pc_97455

dec_label_pc_97455:                               ; preds = %dec_label_pc_97450, %dec_label_pc_9740b
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_9745c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_9746e:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP14_twoIntsStructEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_974a6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP14_twoIntsStructEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_974f3, label %dec_label_pc_974ee

dec_label_pc_974ee:                               ; preds = %dec_label_pc_974a6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_974f3

dec_label_pc_974f3:                               ; preds = %dec_label_pc_974ee, %dec_label_pc_974a6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIP14_twoIntsStructSaIS2_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_974f6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIP14_twoIntsStructEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_97540, label %dec_label_pc_9753b

dec_label_pc_9753b:                               ; preds = %dec_label_pc_974f6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_97540

dec_label_pc_97540:                               ; preds = %dec_label_pc_9753b, %dec_label_pc_974f6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_97542:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIP14_twoIntsStructES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_9755c.lr.ph, label %dec_label_pc_9759d

dec_label_pc_9755c.lr.ph:                         ; preds = %dec_label_pc_97542
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_9755c

dec_label_pc_9755c:                               ; preds = %dec_label_pc_9755c.lr.ph, %dec_label_pc_9755c
  %5 = call i64 @_ZNKSt20_List_const_iteratorIP14_twoIntsStructEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIP14_twoIntsStructEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIP14_twoIntsStructES4_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_9755c, label %dec_label_pc_9759d

dec_label_pc_9759d:                               ; preds = %dec_label_pc_9755c, %dec_label_pc_97542
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_975a2:
  ret void
}

define i64 @_ZNSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_975b2:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_975d4:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIP14_twoIntsStructEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_97640:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_9765e:
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
  br i1 %12, label %dec_label_pc_97721, label %dec_label_pc_9771c

dec_label_pc_9771c:                               ; preds = %dec_label_pc_9765e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_97721

dec_label_pc_97721:                               ; preds = %dec_label_pc_9771c, %dec_label_pc_9765e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_97728:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE37select_on_container_copy_constructionERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_97752:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2ERKS3_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIP14_twoIntsStructEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %arg1) local_unnamed_addr {
dec_label_pc_9777f:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_97792:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIP14_twoIntsStructEEEONSt16remove_referenceIT_E4typeEOS7_(ptr %0)
  call void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2ERKS3_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIP14_twoIntsStructEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_977d4:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIP14_twoIntsStructES4_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_977f2:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIP14_twoIntsStructEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_97818:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIP14_twoIntsStructEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_9783c:
  %0 = call i64 @_ZNKSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_9785e:
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
dec_label_pc_978b6:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE10deallocateERS4_PS3_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_978e7:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE10deallocateEPS4_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIP14_twoIntsStructSaIS2_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_9791a:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE8allocateERS4_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEC2ERS4_PS3_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_9793e:
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
dec_label_pc_97978:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_979b4, label %dec_label_pc_97995

dec_label_pc_97995:                               ; preds = %dec_label_pc_97978
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE10deallocateERS4_PS3_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_979b4

dec_label_pc_979b4:                               ; preds = %dec_label_pc_97995, %dec_label_pc_97978
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_979b7:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIP14_twoIntsStructEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_979f4:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIP14_twoIntsStructEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_97a16:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEEC2ERKS5_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_97a40:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_97a62:
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
  br i1 %5, label %dec_label_pc_97abd, label %dec_label_pc_97ab8

dec_label_pc_97ab8:                               ; preds = %dec_label_pc_97a62
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_97abd

dec_label_pc_97abd:                               ; preds = %dec_label_pc_97ab8, %dec_label_pc_97a62
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_97ac0:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE10deallocateEPS4_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_97ad2:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIP14_twoIntsStructEEE8allocateERS4_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_97b0f:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIP14_twoIntsStructEEEPT_RS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_97b3d:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_97b50:
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
dec_label_pc_97b94:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_97ba8:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIP14_twoIntsStructEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_97bc6:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIP14_twoIntsStructEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_97bea:
  %0 = call i64 @_ZNSt10_List_nodeIP14_twoIntsStructE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_97c0c:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_97c24:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP14_twoIntsStructEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_97c76, label %dec_label_pc_97c5c

dec_label_pc_97c5c:                               ; preds = %dec_label_pc_97c24
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_97c71, label %dec_label_pc_97c6c

dec_label_pc_97c6c:                               ; preds = %dec_label_pc_97c5c
  %7 = call i64 @anon2()
  br label %dec_label_pc_97c71

dec_label_pc_97c71:                               ; preds = %dec_label_pc_97c6c, %dec_label_pc_97c5c
  %8 = call i64 @anon3()
  br label %dec_label_pc_97c76

dec_label_pc_97c76:                               ; preds = %dec_label_pc_97c71, %dec_label_pc_97c24
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIP14_twoIntsStructE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_97c92:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_97ca4:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call i64 @_ZNSt7__cxx114listIP14_twoIntsStructSaIS2_EE4backEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %0, -816
  %7 = add i64 %0, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_97cef

dec_label_pc_97cef:                               ; preds = %dec_label_pc_97cef, %dec_label_pc_97ca4
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %8 = mul i64 %storemerge24.reload, 8
  %9 = add i64 %8, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %7, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge24.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_97d32, label %dec_label_pc_97cef

dec_label_pc_97d32:                               ; preds = %dec_label_pc_97cef, %dec_label_pc_97d32
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %14 = mul i64 %storemerge3.reload, 8
  %15 = add i64 %14, %5
  %16 = add i64 %14, %6
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %20, 100
  store i64 %20, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_97d6f, label %dec_label_pc_97d32

dec_label_pc_97d6f:                               ; preds = %dec_label_pc_97d32
  %21 = inttoptr i64 %5 to ptr
  call void @printStructLine(ptr %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_97d93, label %dec_label_pc_97d8e

dec_label_pc_97d8e:                               ; preds = %dec_label_pc_97d6f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_97d93

dec_label_pc_97d93:                               ; preds = %dec_label_pc_97d8e, %dec_label_pc_97d6f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_9cdaa:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_bb9d2, i64 %7, i64 %6)
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

