@global_var_34897 = external constant [23 x i8]
@global_var_34bf6 = external constant [10 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_dc35:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_14787:
  ret i64 %arg1
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_15bfa:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_160a6:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_26084:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-104 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call ptr @malloc(i32 8)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-104, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_260d5, label %dec_label_pc_260cb

dec_label_pc_260cb:                               ; preds = %dec_label_pc_26084
  call void @exit(i32 -1)
  unreachable

dec_label_pc_260d5:                               ; preds = %dec_label_pc_26084
  store i32 1, ptr %2, align 4
  %5 = load ptr, ptr %stack_var_-104, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  %9 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %9, ptr %stack_var_-96, align 8
  %10 = ptrtoint ptr %stack_var_-96 to i64
  %11 = ptrtoint ptr %stack_var_-56 to i64
  %12 = trunc i64 %11 to i32
  %13 = trunc i64 %10 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %12, i32 %13)
  %14 = load i64, ptr %stack_var_-56, align 8
  %15 = bitcast ptr %stack_var_-104 to ptr
  %16 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %14, i64 1, ptr nonnull %15)
  %17 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %17, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %12, i32 %13)
  %18 = load i64, ptr %stack_var_-56, align 8
  %19 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %18, i64 1, ptr nonnull %15)
  %20 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %20, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %12, i32 %13)
  %21 = load i64, ptr %stack_var_-56, align 8
  %22 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %21, i64 1, ptr nonnull %15)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %23 = call i64 @anon1(i64 %11)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(ptr nonnull %stack_var_-88)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_26227, label %dec_label_pc_26222

dec_label_pc_26222:                               ; preds = %dec_label_pc_260d5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26227

dec_label_pc_26227:                               ; preds = %dec_label_pc_26222, %dec_label_pc_260d5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_263e6:
  call void @_ZNSaIP14_twoIntsStructED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_26406:
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_26426:
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_26446:
  call void @_ZNSaIP14_twoIntsStructEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIP14_twoIntsStructED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_26472:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_26492:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  %6 = bitcast ptr %result to ptr
  %7 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %6, i64 %5)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_264e4:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_2652c:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_2657a, label %dec_label_pc_26575

dec_label_pc_26575:                               ; preds = %dec_label_pc_2652c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2657a

dec_label_pc_2657a:                               ; preds = %dec_label_pc_26575, %dec_label_pc_2652c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_2657c:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_265aa:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2666d, label %dec_label_pc_26668

dec_label_pc_26668:                               ; preds = %dec_label_pc_265aa
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2666d

dec_label_pc_2666d:                               ; preds = %dec_label_pc_26668, %dec_label_pc_265aa
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_26670:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP14_twoIntsStructES2_E17_S_select_on_copyERKS3_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2EmRKS2_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  call void @_ZNSaIP14_twoIntsStructED2Ev(ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %7 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr %arg2)
  %8 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %arg2)
  %9 = bitcast ptr %result to ptr
  %10 = inttoptr i64 %6 to ptr
  %11 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(i64 %8, i64 %7, ptr %9, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %0, 8
  %14 = inttoptr i64 %13 to ptr
  store i64 %12, ptr %14, align 8
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_26784, label %dec_label_pc_2677f

dec_label_pc_2677f:                               ; preds = %dec_label_pc_26670
  call void @__stack_chk_fail()
  br label %dec_label_pc_26784

dec_label_pc_26784:                               ; preds = %dec_label_pc_2677f, %dec_label_pc_26670
  ret void
}

define void @_ZNSaIP14_twoIntsStructEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_26790:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_267b0:
  %0 = ptrtoint ptr %result to i64
  store i64 0, ptr %result, align 8
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  %3 = add i64 %0, 16
  %4 = inttoptr i64 %3 to ptr
  store i64 0, ptr %4, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_267e2:
  ret void
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_267f2:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_26828, label %dec_label_pc_26811

dec_label_pc_26811:                               ; preds = %dec_label_pc_267f2
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE10deallocateERS2_PS1_m(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26828

dec_label_pc_26828:                               ; preds = %dec_label_pc_26811, %dec_label_pc_267f2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_2682c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_2683e:
  call void @_ZSt8_DestroyIPP14_twoIntsStructEvT_S3_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_2686c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_2688e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_268a0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_268ea, label %dec_label_pc_268e5

dec_label_pc_268e5:                               ; preds = %dec_label_pc_268a0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_268ea

dec_label_pc_268ea:                               ; preds = %dec_label_pc_268e5, %dec_label_pc_268a0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_268ec:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_26930:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_26e31, label %dec_label_pc_26972

dec_label_pc_26972:                               ; preds = %dec_label_pc_26930
  %2 = ptrtoint ptr %result to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %2, 8
  %7 = inttoptr i64 %6 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = sub i64 %5, %8
  %10 = ashr i64 %9, 3
  %11 = icmp ult i64 %10, %arg3
  br i1 %11, label %dec_label_pc_26b9f, label %dec_label_pc_26999

dec_label_pc_26999:                               ; preds = %dec_label_pc_26972
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %12 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %13 = inttoptr i64 %12 to ptr
  %14 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr %result)
  store i64 %14, ptr %stack_var_-120, align 8
  %15 = call i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %16 = load i64, ptr %7, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt i64 %15, %arg3
  %19 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %18, label %dec_label_pc_26a07, label %dec_label_pc_26ae0

dec_label_pc_26a07:                               ; preds = %dec_label_pc_26999
  %20 = load i64, ptr %7, align 8
  %21 = mul i64 %arg3, 8
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = inttoptr i64 %20 to ptr
  %25 = inttoptr i64 %19 to ptr
  %26 = call ptr @_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %23, ptr %24, ptr %24, ptr %25)
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %27, %21
  store i64 %28, ptr %7, align 8
  %29 = sub i64 %16, %21
  %30 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = inttoptr i64 %29 to ptr
  %35 = call ptr @_ZSt13move_backwardIPP14_twoIntsStructS2_ET0_T_S4_S3_(ptr %33, ptr %34, ptr %17)
  %36 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %21
  %40 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %41 = inttoptr i64 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %39 to ptr
  call void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %43, ptr %44, ptr %13)
  br label %dec_label_pc_26b8e

dec_label_pc_26ae0:                               ; preds = %dec_label_pc_26999
  %45 = sub i64 %arg3, %15
  %46 = load i64, ptr %7, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = inttoptr i64 %19 to ptr
  %49 = call ptr @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %47, i64 %45, ptr %13, ptr %48)
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %54 = inttoptr i64 %53 to ptr
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = inttoptr i64 %52 to ptr
  %58 = inttoptr i64 %51 to ptr
  %59 = call ptr @_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %56, ptr %17, ptr %57, ptr %58)
  %60 = load i64, ptr %7, align 8
  %61 = mul i64 %15, 8
  %62 = add i64 %60, %61
  store i64 %62, ptr %7, align 8
  %63 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  call void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %66, ptr %17, ptr %13)
  br label %dec_label_pc_26b8e

dec_label_pc_26b8e:                               ; preds = %dec_label_pc_26ae0, %dec_label_pc_26a07
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_26e31

dec_label_pc_26b9f:                               ; preds = %dec_label_pc_26972
  %67 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_34897)
  %68 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result)
  store i64 %68, ptr %stack_var_-120, align 8
  %69 = call i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %70 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(ptr %result, i64 %67)
  %71 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %72 = mul i64 %69, 8
  %73 = add i64 %72, %70
  %74 = inttoptr i64 %73 to ptr
  %75 = inttoptr i64 %71 to ptr
  %76 = call ptr @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %74, i64 %arg3, ptr %arg4, ptr %75)
  %77 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %78 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %79 = inttoptr i64 %78 to ptr
  %80 = load i64, ptr %79, align 8
  %81 = bitcast ptr %stack_var_-136 to ptr
  %82 = inttoptr i64 %80 to ptr
  %83 = inttoptr i64 %70 to ptr
  %84 = inttoptr i64 %77 to ptr
  %85 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr nonnull %81, ptr %82, ptr %83, ptr %84)
  %86 = ptrtoint ptr %85 to i64
  %87 = mul i64 %arg3, 8
  %88 = add i64 %87, %86
  %89 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = inttoptr i64 %90 to ptr
  %96 = inttoptr i64 %88 to ptr
  %97 = inttoptr i64 %89 to ptr
  %98 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %94, ptr %95, ptr %96, ptr %97)
  %99 = ptrtoint ptr %98 to i64
  %100 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %101 = load i64, ptr %7, align 8
  %102 = bitcast ptr %result to ptr
  %103 = inttoptr i64 %101 to ptr
  %104 = inttoptr i64 %100 to ptr
  call void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(ptr %102, ptr %103, ptr %104)
  %105 = load i64, ptr %4, align 8
  %106 = sub i64 %105, %2
  %107 = ashr i64 %106, 3
  %108 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %102, i64 %107)
  store i64 %70, ptr %result, align 8
  store i64 %99, ptr %7, align 8
  %109 = mul i64 %67, 8
  %110 = add i64 %70, %109
  store i64 %110, ptr %4, align 8
  br label %dec_label_pc_26e31

dec_label_pc_26e31:                               ; preds = %dec_label_pc_26b9f, %dec_label_pc_26b8e, %dec_label_pc_26930
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_26e46, label %dec_label_pc_26e41

dec_label_pc_26e41:                               ; preds = %dec_label_pc_26e31
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26e46

dec_label_pc_26e46:                               ; preds = %dec_label_pc_26e41, %dec_label_pc_26e31
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_26e50:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_26e9a, label %dec_label_pc_26e95

dec_label_pc_26e95:                               ; preds = %dec_label_pc_26e50
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26e9a

dec_label_pc_26e9a:                               ; preds = %dec_label_pc_26e95, %dec_label_pc_26e50
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_26e9c:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = sext i32 %arg2 to i64
  %3 = mul i64 %2, 8
  %4 = add i64 %3, %0
  store i64 %4, ptr %stack_var_-32, align 8
  %5 = bitcast ptr %stack_var_-32 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr nonnull %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_26f00, label %dec_label_pc_26efb

dec_label_pc_26efb:                               ; preds = %dec_label_pc_26e9c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26f00

dec_label_pc_26f00:                               ; preds = %dec_label_pc_26efb, %dec_label_pc_26e9c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_26f02:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP14_twoIntsStructES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_26f29:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_26f73, label %dec_label_pc_26f6e

dec_label_pc_26f6e:                               ; preds = %dec_label_pc_26f29
  call void @__stack_chk_fail()
  br label %dec_label_pc_26f73

dec_label_pc_26f73:                               ; preds = %dec_label_pc_26f6e, %dec_label_pc_26f29
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_26f7a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2EmRKS2_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26f8c:
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2ERKS2_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_26ff2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_2703c, label %dec_label_pc_27037

dec_label_pc_27037:                               ; preds = %dec_label_pc_26ff2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2703c

dec_label_pc_2703c:                               ; preds = %dec_label_pc_27037, %dec_label_pc_26ff2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_2703e:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_2708c, label %dec_label_pc_27087

dec_label_pc_27087:                               ; preds = %dec_label_pc_2703e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2708c

dec_label_pc_2708c:                               ; preds = %dec_label_pc_27087, %dec_label_pc_2703e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_2708e:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_270c4:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_270d3:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPP14_twoIntsStructEvT_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_27105:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP14_twoIntsStructEEvT_S5_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_27130:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_27152:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_27164:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_271c2:
  %0 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE7destroyIS1_EEvRS2_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_271f6:
  %0 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_27214:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define ptr @_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_27257:
  %0 = call i64 @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPP14_twoIntsStructS2_ET0_T_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_272ae:
  %0 = call ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_272fd:
  call void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_2732f:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27364:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_273c7, label %dec_label_pc_273bb

dec_label_pc_273bb:                               ; preds = %dec_label_pc_27364
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_273c7

dec_label_pc_273c7:                               ; preds = %dec_label_pc_273bb, %dec_label_pc_27364
  %7 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_27427, label %dec_label_pc_27415

dec_label_pc_27415:                               ; preds = %dec_label_pc_273c7
  %14 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_27427, label %dec_label_pc_27439

dec_label_pc_27427:                               ; preds = %dec_label_pc_27415, %dec_label_pc_273c7
  %16 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_27439

dec_label_pc_27439:                               ; preds = %dec_label_pc_27415, %dec_label_pc_27427
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_2744d, label %dec_label_pc_27448

dec_label_pc_27448:                               ; preds = %dec_label_pc_27439
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2744d

dec_label_pc_2744d:                               ; preds = %dec_label_pc_27448, %dec_label_pc_27439
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_27454:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_27489, label %dec_label_pc_2746f

dec_label_pc_2746f:                               ; preds = %dec_label_pc_27454
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8allocateERS2_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_27489

dec_label_pc_27489:                               ; preds = %dec_label_pc_27454, %dec_label_pc_2746f
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_2748b:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_274e2:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIP14_twoIntsStructEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_27510:
  call void @_ZNSaIP14_twoIntsStructEC2ERKS1_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_27546:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(ptr %result, i64 %arg2)
  store i64 %1, ptr %result, align 8
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  store i64 %0, ptr %3, align 8
  %4 = mul i64 %arg2, 8
  %5 = add i64 %4, %0
  %6 = add i64 %0, 16
  %7 = inttoptr i64 %6 to ptr
  store i64 %5, ptr %7, align 8
  ret i64 %0
}

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_275a0:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_275d6:
  %0 = mul i64 %arg3, 8
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP14_twoIntsStructEEvT_S5_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_2760b:
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_2761e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_27634:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_27646:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE7destroyIS1_EEvRS2_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_27683:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE7destroyIS2_EEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_276ad:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_27702, label %dec_label_pc_276fd

dec_label_pc_276fd:                               ; preds = %dec_label_pc_276ad
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_27702

dec_label_pc_27702:                               ; preds = %dec_label_pc_276fd, %dec_label_pc_276ad
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_27704:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_27739:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_2774b:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_277b9:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPP14_twoIntsStructS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_277eb:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP14_twoIntsStructmS3_EET_S5_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_27820:
  %0 = call i64 @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE11_S_max_sizeERKS2_(ptr %1)
  ret i64 %2
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_27846:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_27874:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_278be, label %dec_label_pc_278b9

dec_label_pc_278b9:                               ; preds = %dec_label_pc_27874
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_278be

dec_label_pc_278be:                               ; preds = %dec_label_pc_278b9, %dec_label_pc_27874
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIP14_twoIntsStructEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_278c0:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_278ea:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_2791c:
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

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE7destroyIS2_EEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_27960:
  ret void
}

define ptr @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_27973:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_27986:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_279b3:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP14_twoIntsStructES5_EET0_T_S8_S7_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_279e8:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_279fa:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_27a2b:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPP14_twoIntsStructS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_27a41:
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg1, %arg2
  %1 = icmp eq i1 %0, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %1, label %dec_label_pc_27a62, label %dec_label_pc_27a7c

dec_label_pc_27a62:                               ; preds = %dec_label_pc_27a41, %dec_label_pc_27a62
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %2 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i64 %arg3, ptr %2, align 8
  %3 = add i64 %stack_var_-32.01.reload, 8
  %4 = icmp eq i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %3, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %5, label %dec_label_pc_27a62, label %dec_label_pc_27a7c

dec_label_pc_27a7c:                               ; preds = %dec_label_pc_27a62, %dec_label_pc_27a41
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP14_twoIntsStructmS3_EET_S5_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27a80:
  %0 = call ptr @_ZSt6fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE11_S_max_sizeERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_27ab1:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 1152921504606846975, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8max_sizeERKS2_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_27b18, label %dec_label_pc_27b13

dec_label_pc_27b13:                               ; preds = %dec_label_pc_27ab1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_27b18

dec_label_pc_27b18:                               ; preds = %dec_label_pc_27b13, %dec_label_pc_27ab1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_27b1a:
  ret i64 1152921504606846975
}

define i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27b32:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_27b84, label %dec_label_pc_27b6a

dec_label_pc_27b6a:                               ; preds = %dec_label_pc_27b32
  %6 = icmp ult i64 %arg2, 2305843009213693952
  br i1 %6, label %dec_label_pc_27b7f, label %dec_label_pc_27b7a

dec_label_pc_27b7a:                               ; preds = %dec_label_pc_27b6a
  %7 = call i64 @anon2()
  br label %dec_label_pc_27b7f

dec_label_pc_27b7f:                               ; preds = %dec_label_pc_27b7a, %dec_label_pc_27b6a
  %8 = call i64 @anon3()
  br label %dec_label_pc_27b84

dec_label_pc_27b84:                               ; preds = %dec_label_pc_27b7f, %dec_label_pc_27b32
  %9 = mul i64 %arg2, 8
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_27b98:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27bab:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP14_twoIntsStructES5_EET0_T_S8_S7_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27bfa:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27c2b:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27c5c:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPP14_twoIntsStructENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8max_sizeERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_27ca4:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg1) local_unnamed_addr {
dec_label_pc_27cc2:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27cd4:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27d42:
  %0 = call i64 @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27d91:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  %.pre = and i64 %2, -8
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_27df0, label %dec_label_pc_27dc0

dec_label_pc_27dc0:                               ; preds = %dec_label_pc_27d91
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_27df0

dec_label_pc_27df0:                               ; preds = %dec_label_pc_27d91, %dec_label_pc_27dc0
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPP14_twoIntsStructENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_27e07:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_27e15:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_27e3a, label %dec_label_pc_27e74

dec_label_pc_27e3a:                               ; preds = %dec_label_pc_27e15
  %2 = mul i64 %arg2, 8
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_27e74

dec_label_pc_27e74:                               ; preds = %dec_label_pc_27e15, %dec_label_pc_27e3a
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_27e76:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_27e94:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27eb5:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_27ee6:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPP14_twoIntsStructE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27f0c:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27f7a:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPP14_twoIntsStructE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_27fac:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27fc1:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27ff2:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_28040, label %dec_label_pc_28021

dec_label_pc_28021:                               ; preds = %dec_label_pc_27ff2
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_28040

dec_label_pc_28040:                               ; preds = %dec_label_pc_28021, %dec_label_pc_27ff2
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_28055:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_28086:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_280d4, label %dec_label_pc_280b5

dec_label_pc_280b5:                               ; preds = %dec_label_pc_28086
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_280d4

dec_label_pc_280d4:                               ; preds = %dec_label_pc_280b5, %dec_label_pc_28086
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_280e9:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm(ptr %0, i64 2)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @printStructLine(ptr %4)
  %5 = inttoptr i64 %3 to ptr
  call void @free(ptr %5)
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_28170:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 8
  %2 = add i64 %1, %0
  ret i64 %2
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_2bb08:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_34bf6, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @_ZSt20__throw_length_errorPKc(ptr) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

