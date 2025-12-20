@global_var_491e5 = external constant [23 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_1b861:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_1b877:
  ret i64 %arg1
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_1ccea:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d196:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_254ce:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %stack_var_-112 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  store i32 0, ptr %2, align 4
  %3 = add i64 %1, 4
  %4 = inttoptr i64 %3 to ptr
  store i32 0, ptr %4, align 4
  store i64 %1, ptr %stack_var_-112, align 8
  %5 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %5, ptr %stack_var_-104, align 8
  %6 = ptrtoint ptr %stack_var_-104 to i64
  %7 = ptrtoint ptr %stack_var_-56 to i64
  %8 = trunc i64 %7 to i32
  %9 = trunc i64 %6 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %8, i32 %9)
  %10 = load i64, ptr %stack_var_-56, align 8
  %11 = bitcast ptr %stack_var_-112 to ptr
  %12 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %10, i64 1, ptr nonnull %11)
  %13 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %13, ptr %stack_var_-104, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %8, i32 %9)
  %14 = load i64, ptr %stack_var_-56, align 8
  %15 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %14, i64 1, ptr nonnull %11)
  %16 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %16, ptr %stack_var_-104, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %8, i32 %9)
  %17 = load i64, ptr %stack_var_-56, align 8
  %18 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %17, i64 1, ptr nonnull %11)
  call void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EEC2ERKS3_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %19 = call i64 @anon1(i64 %7)
  call void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EED2Ev(ptr nonnull %stack_var_-88)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_2565e, label %dec_label_pc_25659

dec_label_pc_25659:                               ; preds = %dec_label_pc_254ce
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2565e

dec_label_pc_2565e:                               ; preds = %dec_label_pc_25659, %dec_label_pc_254ce
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_257ec:
  call void @_ZNSaIP12TwoIntsClassED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_2580c:
  call void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_2582c:
  call void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_2584c:
  call void @_ZNSaIP12TwoIntsClassEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIP12TwoIntsClassED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_25878:
  call void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_25898:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  %6 = bitcast ptr %result to ptr
  %7 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %6, i64 %5)
  call void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_258ea:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPP12TwoIntsClassS1_EvT_S3_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_25932:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_25980, label %dec_label_pc_2597b

dec_label_pc_2597b:                               ; preds = %dec_label_pc_25932
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25980

dec_label_pc_25980:                               ; preds = %dec_label_pc_2597b, %dec_label_pc_25932
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_25982:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_259b0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_25a73, label %dec_label_pc_25a6e

dec_label_pc_25a6e:                               ; preds = %dec_label_pc_259b0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25a73

dec_label_pc_25a73:                               ; preds = %dec_label_pc_25a6e, %dec_label_pc_259b0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_25a76:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP12TwoIntsClassES2_E17_S_select_on_copyERKS3_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EEC2EmRKS2_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  call void @_ZNSaIP12TwoIntsClassED2Ev(ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %7 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE3endEv(ptr %arg2)
  %8 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE5beginEv(ptr %arg2)
  %9 = bitcast ptr %result to ptr
  %10 = inttoptr i64 %6 to ptr
  %11 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(i64 %8, i64 %7, ptr %9, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %0, 8
  %14 = inttoptr i64 %13 to ptr
  store i64 %12, ptr %14, align 8
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_25b8a, label %dec_label_pc_25b85

dec_label_pc_25b85:                               ; preds = %dec_label_pc_25a76
  call void @__stack_chk_fail()
  br label %dec_label_pc_25b8a

dec_label_pc_25b8a:                               ; preds = %dec_label_pc_25b85, %dec_label_pc_25a76
  ret void
}

define void @_ZNSaIP12TwoIntsClassEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_25b96:
  call void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_25bb6:
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

define void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_25be8:
  ret void
}

define i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_25bf8:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_25c2e, label %dec_label_pc_25c17

dec_label_pc_25c17:                               ; preds = %dec_label_pc_25bf8
  %1 = call i64 @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE10deallocateERS2_PS1_m(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25c2e

dec_label_pc_25c2e:                               ; preds = %dec_label_pc_25c17, %dec_label_pc_25bf8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_25c32:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPP12TwoIntsClassS1_EvT_S3_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_25c44:
  call void @_ZSt8_DestroyIPP12TwoIntsClassEvT_S3_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_25c72:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_25c94:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_25ca6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_25cf0, label %dec_label_pc_25ceb

dec_label_pc_25ceb:                               ; preds = %dec_label_pc_25ca6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25cf0

dec_label_pc_25cf0:                               ; preds = %dec_label_pc_25ceb, %dec_label_pc_25ca6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_25cf2:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_25d36:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_26237, label %dec_label_pc_25d78

dec_label_pc_25d78:                               ; preds = %dec_label_pc_25d36
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
  br i1 %11, label %dec_label_pc_25fa5, label %dec_label_pc_25d9f

dec_label_pc_25d9f:                               ; preds = %dec_label_pc_25d78
  call void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %12 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %13 = inttoptr i64 %12 to ptr
  %14 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE3endEv(ptr %result)
  store i64 %14, ptr %stack_var_-120, align 8
  %15 = call i64 @_ZN9__gnu_cxxmiIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %16 = load i64, ptr %7, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt i64 %15, %arg3
  %19 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %18, label %dec_label_pc_25e0d, label %dec_label_pc_25ee6

dec_label_pc_25e0d:                               ; preds = %dec_label_pc_25d9f
  %20 = load i64, ptr %7, align 8
  %21 = mul i64 %arg3, 8
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = inttoptr i64 %20 to ptr
  %25 = inttoptr i64 %19 to ptr
  %26 = call ptr @_ZSt22__uninitialized_move_aIPP12TwoIntsClassS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %23, ptr %24, ptr %24, ptr %25)
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %27, %21
  store i64 %28, ptr %7, align 8
  %29 = sub i64 %16, %21
  %30 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = inttoptr i64 %29 to ptr
  %35 = call ptr @_ZSt13move_backwardIPP12TwoIntsClassS2_ET0_T_S4_S3_(ptr %33, ptr %34, ptr %17)
  %36 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %21
  %40 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %41 = inttoptr i64 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %39 to ptr
  call void @_ZSt4fillIPP12TwoIntsClassS1_EvT_S3_RKT0_(ptr %43, ptr %44, ptr %13)
  br label %dec_label_pc_25f94

dec_label_pc_25ee6:                               ; preds = %dec_label_pc_25d9f
  %45 = sub i64 %arg3, %15
  %46 = load i64, ptr %7, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = inttoptr i64 %19 to ptr
  %49 = call ptr @_ZSt24__uninitialized_fill_n_aIPP12TwoIntsClassmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %47, i64 %45, ptr %13, ptr %48)
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %54 = inttoptr i64 %53 to ptr
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = inttoptr i64 %52 to ptr
  %58 = inttoptr i64 %51 to ptr
  %59 = call ptr @_ZSt22__uninitialized_move_aIPP12TwoIntsClassS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %56, ptr %17, ptr %57, ptr %58)
  %60 = load i64, ptr %7, align 8
  %61 = mul i64 %15, 8
  %62 = add i64 %60, %61
  store i64 %62, ptr %7, align 8
  %63 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  call void @_ZSt4fillIPP12TwoIntsClassS1_EvT_S3_RKT0_(ptr %66, ptr %17, ptr %13)
  br label %dec_label_pc_25f94

dec_label_pc_25f94:                               ; preds = %dec_label_pc_25ee6, %dec_label_pc_25e0d
  call void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_26237

dec_label_pc_25fa5:                               ; preds = %dec_label_pc_25d78
  %67 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_491e5)
  %68 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE5beginEv(ptr %result)
  store i64 %68, ptr %stack_var_-120, align 8
  %69 = call i64 @_ZN9__gnu_cxxmiIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %70 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE11_M_allocateEm(ptr %result, i64 %67)
  %71 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %72 = mul i64 %69, 8
  %73 = add i64 %72, %70
  %74 = inttoptr i64 %73 to ptr
  %75 = inttoptr i64 %71 to ptr
  %76 = call ptr @_ZSt24__uninitialized_fill_n_aIPP12TwoIntsClassmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %74, i64 %arg3, ptr %arg4, ptr %75)
  %77 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %78 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %79 = inttoptr i64 %78 to ptr
  %80 = load i64, ptr %79, align 8
  %81 = bitcast ptr %stack_var_-136 to ptr
  %82 = inttoptr i64 %80 to ptr
  %83 = inttoptr i64 %70 to ptr
  %84 = inttoptr i64 %77 to ptr
  %85 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP12TwoIntsClassS2_SaIS1_EET0_T_S5_S4_RT1_(ptr nonnull %81, ptr %82, ptr %83, ptr %84)
  %86 = ptrtoint ptr %85 to i64
  %87 = mul i64 %arg3, 8
  %88 = add i64 %87, %86
  %89 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = inttoptr i64 %90 to ptr
  %96 = inttoptr i64 %88 to ptr
  %97 = inttoptr i64 %89 to ptr
  %98 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP12TwoIntsClassS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %94, ptr %95, ptr %96, ptr %97)
  %99 = ptrtoint ptr %98 to i64
  %100 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %101 = load i64, ptr %7, align 8
  %102 = bitcast ptr %result to ptr
  %103 = inttoptr i64 %101 to ptr
  %104 = inttoptr i64 %100 to ptr
  call void @_ZSt8_DestroyIPP12TwoIntsClassS1_EvT_S3_RSaIT0_E(ptr %102, ptr %103, ptr %104)
  %105 = load i64, ptr %4, align 8
  %106 = sub i64 %105, %2
  %107 = ashr i64 %106, 3
  %108 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %102, i64 %107)
  store i64 %70, ptr %result, align 8
  store i64 %99, ptr %7, align 8
  %109 = mul i64 %67, 8
  %110 = add i64 %70, %109
  store i64 %110, ptr %4, align 8
  br label %dec_label_pc_26237

dec_label_pc_26237:                               ; preds = %dec_label_pc_25fa5, %dec_label_pc_25f94, %dec_label_pc_25d36
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_2624c, label %dec_label_pc_26247

dec_label_pc_26247:                               ; preds = %dec_label_pc_26237
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2624c

dec_label_pc_2624c:                               ; preds = %dec_label_pc_26247, %dec_label_pc_26237
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_26256:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_262a0, label %dec_label_pc_2629b

dec_label_pc_2629b:                               ; preds = %dec_label_pc_26256
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_262a0

dec_label_pc_262a0:                               ; preds = %dec_label_pc_2629b, %dec_label_pc_26256
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_262a2:
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
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr nonnull %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_26306, label %dec_label_pc_26301

dec_label_pc_26301:                               ; preds = %dec_label_pc_262a2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26306

dec_label_pc_26306:                               ; preds = %dec_label_pc_26301, %dec_label_pc_262a2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_26308:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP12TwoIntsClassES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_2632f:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_26379, label %dec_label_pc_26374

dec_label_pc_26374:                               ; preds = %dec_label_pc_2632f
  call void @__stack_chk_fail()
  br label %dec_label_pc_26379

dec_label_pc_26379:                               ; preds = %dec_label_pc_26374, %dec_label_pc_2632f
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_26380:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EEC2EmRKS2_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26392:
  call void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE12_Vector_implC2ERKS2_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_263f8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_26442, label %dec_label_pc_2643d

dec_label_pc_2643d:                               ; preds = %dec_label_pc_263f8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26442

dec_label_pc_26442:                               ; preds = %dec_label_pc_2643d, %dec_label_pc_263f8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_26444:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_26492, label %dec_label_pc_2648d

dec_label_pc_2648d:                               ; preds = %dec_label_pc_26444
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26492

dec_label_pc_26492:                               ; preds = %dec_label_pc_2648d, %dec_label_pc_26444
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_26494:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_264ca:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_264d9:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPP12TwoIntsClassEvT_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_2650b:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP12TwoIntsClassEEvT_S5_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_26536:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_26558:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_2656a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_265c8:
  %0 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE7destroyIS1_EEvRS2_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_265fc:
  %0 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_2661a:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define ptr @_ZSt22__uninitialized_move_aIPP12TwoIntsClassS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_2665d:
  %0 = call i64 @_ZSt18make_move_iteratorIPP12TwoIntsClassESt13move_iteratorIT_ES4_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPP12TwoIntsClassESt13move_iteratorIT_ES4_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP12TwoIntsClassES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPP12TwoIntsClassS2_ET0_T_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_266b4:
  %0 = call ptr @_ZSt12__miter_baseIPP12TwoIntsClassET_S3_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPP12TwoIntsClassET_S3_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPP12TwoIntsClassS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26703:
  call void @_ZSt8__fill_aIPP12TwoIntsClassS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPP12TwoIntsClassmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_26735:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPP12TwoIntsClassmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_2676a:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_267cd, label %dec_label_pc_267c1

dec_label_pc_267c1:                               ; preds = %dec_label_pc_2676a
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_267cd

dec_label_pc_267cd:                               ; preds = %dec_label_pc_267c1, %dec_label_pc_2676a
  %7 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_2682d, label %dec_label_pc_2681b

dec_label_pc_2681b:                               ; preds = %dec_label_pc_267cd
  %14 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_2682d, label %dec_label_pc_2683f

dec_label_pc_2682d:                               ; preds = %dec_label_pc_2681b, %dec_label_pc_267cd
  %16 = call i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_2683f

dec_label_pc_2683f:                               ; preds = %dec_label_pc_2681b, %dec_label_pc_2682d
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_26853, label %dec_label_pc_2684e

dec_label_pc_2684e:                               ; preds = %dec_label_pc_2683f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26853

dec_label_pc_26853:                               ; preds = %dec_label_pc_2684e, %dec_label_pc_2683f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_2685a:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_2688f, label %dec_label_pc_26875

dec_label_pc_26875:                               ; preds = %dec_label_pc_2685a
  %1 = call i64 @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE8allocateERS2_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_2688f

dec_label_pc_2688f:                               ; preds = %dec_label_pc_2685a, %dec_label_pc_26875
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP12TwoIntsClassS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_26891:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIP12TwoIntsClassSt13move_iteratorIPS1_EET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIP12TwoIntsClassSt13move_iteratorIPS1_EET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP12TwoIntsClassES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_268e8:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIP12TwoIntsClassEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE12_Vector_implC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_26916:
  call void @_ZNSaIP12TwoIntsClassEC2ERKS1_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_2694c:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIP12TwoIntsClassSaIS1_EE11_M_allocateEm(ptr %result, i64 %arg2)
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

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_269a6:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_269dc:
  %0 = mul i64 %arg3, 8
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP12TwoIntsClassEEvT_S5_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_26a11:
  ret void
}

define i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_26a24:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_26a3a:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_26a4c:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE7destroyIS1_EEvRS2_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_26a89:
  call void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassE7destroyIS2_EEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPP12TwoIntsClassESt13move_iteratorIT_ES4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_26ab3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPP12TwoIntsClassEONSt16remove_referenceIT_E4typeEOS5_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPP12TwoIntsClassEC2ES2_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_26b08, label %dec_label_pc_26b03

dec_label_pc_26b03:                               ; preds = %dec_label_pc_26ab3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26b08

dec_label_pc_26b08:                               ; preds = %dec_label_pc_26b03, %dec_label_pc_26ab3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP12TwoIntsClassES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_26b0a:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPP12TwoIntsClassES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPP12TwoIntsClassET_S3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_26b3f:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26b51:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPP12TwoIntsClassET_S3_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPP12TwoIntsClassET_S3_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPP12TwoIntsClassET_S3_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPP12TwoIntsClassET_RKS3_S3_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPP12TwoIntsClassS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26bbf:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPP12TwoIntsClassS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPP12TwoIntsClassmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26bf1:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP12TwoIntsClassmS3_EET_S5_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIP12TwoIntsClassSaIS1_EE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_26c26:
  %0 = call i64 @_ZNKSt12_Vector_baseIP12TwoIntsClassSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE11_S_max_sizeERKS2_(ptr %1)
  ret i64 %2
}

define i64 @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_26c4c:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIP12TwoIntsClassSt13move_iteratorIPS1_EET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_26c7a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPP12TwoIntsClassEC2ES2_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_26cc4, label %dec_label_pc_26cbf

dec_label_pc_26cbf:                               ; preds = %dec_label_pc_26c7a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26cc4

dec_label_pc_26cc4:                               ; preds = %dec_label_pc_26cbf, %dec_label_pc_26c7a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIP12TwoIntsClassEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_26cc6:
  call void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26cf0:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_26d22:
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

define void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassE7destroyIS2_EEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_26d66:
  ret void
}

define ptr @_ZSt4moveIRPP12TwoIntsClassEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_26d79:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPP12TwoIntsClassEC2ES2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_26d8c:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPP12TwoIntsClassEONSt16remove_referenceIT_E4typeEOS5_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPP12TwoIntsClassES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26db9:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP12TwoIntsClassES5_EET0_T_S8_S7_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPP12TwoIntsClassET_S3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_26dee:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26e00:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPP12TwoIntsClassET_RKS3_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_26e31:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPP12TwoIntsClassS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_26e47:
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg1, %arg2
  %1 = icmp eq i1 %0, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %1, label %dec_label_pc_26e68, label %dec_label_pc_26e82

dec_label_pc_26e68:                               ; preds = %dec_label_pc_26e47, %dec_label_pc_26e68
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %2 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i64 %arg3, ptr %2, align 8
  %3 = add i64 %stack_var_-32.01.reload, 8
  %4 = icmp eq i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %3, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %5, label %dec_label_pc_26e68, label %dec_label_pc_26e82

dec_label_pc_26e82:                               ; preds = %dec_label_pc_26e68, %dec_label_pc_26e47
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP12TwoIntsClassmS3_EET_S5_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26e86:
  %0 = call ptr @_ZSt6fill_nIPP12TwoIntsClassmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EE11_S_max_sizeERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_26eb7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 1152921504606846975, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE8max_sizeERKS2_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_26f1e, label %dec_label_pc_26f19

dec_label_pc_26f19:                               ; preds = %dec_label_pc_26eb7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26f1e

dec_label_pc_26f1e:                               ; preds = %dec_label_pc_26f19, %dec_label_pc_26eb7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIP12TwoIntsClassE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_26f20:
  ret i64 1152921504606846975
}

define i64 @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26f38:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP12TwoIntsClassE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_26f8a, label %dec_label_pc_26f70

dec_label_pc_26f70:                               ; preds = %dec_label_pc_26f38
  %6 = icmp ult i64 %arg2, 2305843009213693952
  br i1 %6, label %dec_label_pc_26f85, label %dec_label_pc_26f80

dec_label_pc_26f80:                               ; preds = %dec_label_pc_26f70
  %7 = call i64 @anon2()
  br label %dec_label_pc_26f85

dec_label_pc_26f85:                               ; preds = %dec_label_pc_26f80, %dec_label_pc_26f70
  %8 = call i64 @anon3()
  br label %dec_label_pc_26f8a

dec_label_pc_26f8a:                               ; preds = %dec_label_pc_26f85, %dec_label_pc_26f38
  %9 = mul i64 %arg2, 8
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorIP12TwoIntsClassEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_26f9e:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_26fb1:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP12TwoIntsClassES5_EET0_T_S8_S7_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27000:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPP12TwoIntsClassES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27031:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12TwoIntsClassEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPP12TwoIntsClassmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27062:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPP12TwoIntsClassENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPP12TwoIntsClassmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIP12TwoIntsClassEE8max_sizeERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_270aa:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP12TwoIntsClassE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg1) local_unnamed_addr {
dec_label_pc_270c8:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_270da:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPP12TwoIntsClassET_S3_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKP12TwoIntsClassSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKP12TwoIntsClassSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKP12TwoIntsClassPS1_ET1_T0_S6_S5_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPP12TwoIntsClassET_RKS3_S3_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPP12TwoIntsClassES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27148:
  %0 = call i64 @_ZSt12__miter_baseIPP12TwoIntsClassEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPP12TwoIntsClassEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12TwoIntsClassEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27197:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  %.pre = and i64 %2, -8
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_271f6, label %dec_label_pc_271c6

dec_label_pc_271c6:                               ; preds = %dec_label_pc_27197
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_271f6

dec_label_pc_271f6:                               ; preds = %dec_label_pc_27197, %dec_label_pc_271c6
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPP12TwoIntsClassENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_2720d:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPP12TwoIntsClassmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_2721b:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_27240, label %dec_label_pc_2727a

dec_label_pc_27240:                               ; preds = %dec_label_pc_2721b
  %2 = mul i64 %arg2, 8
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPP12TwoIntsClassS1_EvT_S3_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_2727a

dec_label_pc_2727a:                               ; preds = %dec_label_pc_2721b, %dec_label_pc_27240
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIP12TwoIntsClassE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_2727c:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP12TwoIntsClassE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKP12TwoIntsClassSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_2729a:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP12TwoIntsClassSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKP12TwoIntsClassPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_272bb:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKP12TwoIntsClassPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPP12TwoIntsClassEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_272ec:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPP12TwoIntsClassE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPP12TwoIntsClassET_S3_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27312:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPP12TwoIntsClassET_S3_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPP12TwoIntsClassET_S3_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPP12TwoIntsClassET_S3_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPP12TwoIntsClassET_RKS3_S3_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKP12TwoIntsClassPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_27380:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12TwoIntsClassEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPP12TwoIntsClassE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_273b2:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_273c7:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12TwoIntsClassEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_273f8:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_27446, label %dec_label_pc_27427

dec_label_pc_27427:                               ; preds = %dec_label_pc_273f8
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_27446

dec_label_pc_27446:                               ; preds = %dec_label_pc_27427, %dec_label_pc_273f8
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPP12TwoIntsClassS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_2745b:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP12TwoIntsClassEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP12TwoIntsClassEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_2748c:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_274da, label %dec_label_pc_274bb

dec_label_pc_274bb:                               ; preds = %dec_label_pc_2748c
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_274da

dec_label_pc_274da:                               ; preds = %dec_label_pc_274bb, %dec_label_pc_2748c
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_2753d:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EEixEm(ptr %0, i64 2)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  call void @printIntLine(i32 %5)
  %6 = icmp eq i64 %3, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_27588, label %dec_label_pc_2757b

dec_label_pc_2757b:                               ; preds = %dec_label_pc_2753d
  %7 = inttoptr i64 %3 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 8)
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_27588

dec_label_pc_27588:                               ; preds = %dec_label_pc_2757b, %dec_label_pc_2753d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIP12TwoIntsClassSaIS1_EEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_275f2:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 8
  %2 = add i64 %1, %0
  ret i64 %2
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @_ZSt20__throw_length_errorPKc(ptr) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

