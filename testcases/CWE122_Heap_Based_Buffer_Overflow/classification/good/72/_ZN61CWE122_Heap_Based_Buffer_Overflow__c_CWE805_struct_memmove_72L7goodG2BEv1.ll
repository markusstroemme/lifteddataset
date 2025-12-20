@global_var_7bd43 = external constant [23 x i8]
@global_var_7c84a = external constant [10 x i8]
@0 = external global i32
@global_var_320 = external constant i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_41846:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_4185c:
  ret i64 %arg1
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_42cce:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_4317a:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5bb34:
  call void @_ZNSaIP14_twoIntsStructED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5bb54:
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5bb74:
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5bb94:
  call void @_ZNSaIP14_twoIntsStructEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIP14_twoIntsStructED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5bbc0:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5bbe0:
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
dec_label_pc_5bc32:
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
dec_label_pc_5bc7a:
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
  br i1 %6, label %dec_label_pc_5bcc8, label %dec_label_pc_5bcc3

dec_label_pc_5bcc3:                               ; preds = %dec_label_pc_5bc7a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5bcc8

dec_label_pc_5bcc8:                               ; preds = %dec_label_pc_5bcc3, %dec_label_pc_5bc7a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_5bcca:
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
dec_label_pc_5bcf8:
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
  br i1 %10, label %dec_label_pc_5bdbb, label %dec_label_pc_5bdb6

dec_label_pc_5bdb6:                               ; preds = %dec_label_pc_5bcf8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5bdbb

dec_label_pc_5bdbb:                               ; preds = %dec_label_pc_5bdb6, %dec_label_pc_5bcf8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5bdbe:
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
  br i1 %16, label %dec_label_pc_5bed2, label %dec_label_pc_5becd

dec_label_pc_5becd:                               ; preds = %dec_label_pc_5bdbe
  call void @__stack_chk_fail()
  br label %dec_label_pc_5bed2

dec_label_pc_5bed2:                               ; preds = %dec_label_pc_5becd, %dec_label_pc_5bdbe
  ret void
}

define void @_ZNSaIP14_twoIntsStructEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5bede:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5befe:
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
dec_label_pc_5bf30:
  ret void
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5bf40:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_5bf76, label %dec_label_pc_5bf5f

dec_label_pc_5bf5f:                               ; preds = %dec_label_pc_5bf40
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE10deallocateERS2_PS1_m(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5bf76

dec_label_pc_5bf76:                               ; preds = %dec_label_pc_5bf5f, %dec_label_pc_5bf40
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_5bf7a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5bf8c:
  call void @_ZSt8_DestroyIPP14_twoIntsStructEvT_S3_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5bfba:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_5bfdc:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_5bfee:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_5c038, label %dec_label_pc_5c033

dec_label_pc_5c033:                               ; preds = %dec_label_pc_5bfee
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5c038

dec_label_pc_5c038:                               ; preds = %dec_label_pc_5c033, %dec_label_pc_5bfee
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5c03a:
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
dec_label_pc_5c07e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_5c57f, label %dec_label_pc_5c0c0

dec_label_pc_5c0c0:                               ; preds = %dec_label_pc_5c07e
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
  br i1 %11, label %dec_label_pc_5c2ed, label %dec_label_pc_5c0e7

dec_label_pc_5c0e7:                               ; preds = %dec_label_pc_5c0c0
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
  br i1 %18, label %dec_label_pc_5c155, label %dec_label_pc_5c22e

dec_label_pc_5c155:                               ; preds = %dec_label_pc_5c0e7
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
  br label %dec_label_pc_5c2dc

dec_label_pc_5c22e:                               ; preds = %dec_label_pc_5c0e7
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
  br label %dec_label_pc_5c2dc

dec_label_pc_5c2dc:                               ; preds = %dec_label_pc_5c22e, %dec_label_pc_5c155
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_5c57f

dec_label_pc_5c2ed:                               ; preds = %dec_label_pc_5c0c0
  %67 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_7bd43)
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
  br label %dec_label_pc_5c57f

dec_label_pc_5c57f:                               ; preds = %dec_label_pc_5c2ed, %dec_label_pc_5c2dc, %dec_label_pc_5c07e
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_5c594, label %dec_label_pc_5c58f

dec_label_pc_5c58f:                               ; preds = %dec_label_pc_5c57f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5c594

dec_label_pc_5c594:                               ; preds = %dec_label_pc_5c58f, %dec_label_pc_5c57f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_5c59e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_5c5e8, label %dec_label_pc_5c5e3

dec_label_pc_5c5e3:                               ; preds = %dec_label_pc_5c59e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5c5e8

dec_label_pc_5c5e8:                               ; preds = %dec_label_pc_5c5e3, %dec_label_pc_5c59e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_5c5ea:
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
  br i1 %8, label %dec_label_pc_5c64e, label %dec_label_pc_5c649

dec_label_pc_5c649:                               ; preds = %dec_label_pc_5c5ea
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5c64e

dec_label_pc_5c64e:                               ; preds = %dec_label_pc_5c649, %dec_label_pc_5c5ea
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_5c650:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP14_twoIntsStructES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5c677:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_5c6c1, label %dec_label_pc_5c6bc

dec_label_pc_5c6bc:                               ; preds = %dec_label_pc_5c677
  call void @__stack_chk_fail()
  br label %dec_label_pc_5c6c1

dec_label_pc_5c6c1:                               ; preds = %dec_label_pc_5c6bc, %dec_label_pc_5c677
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_5c6c8:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2EmRKS2_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5c6da:
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2ERKS2_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_5c740:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_5c78a, label %dec_label_pc_5c785

dec_label_pc_5c785:                               ; preds = %dec_label_pc_5c740
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5c78a

dec_label_pc_5c78a:                               ; preds = %dec_label_pc_5c785, %dec_label_pc_5c740
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_5c78c:
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
  br i1 %6, label %dec_label_pc_5c7da, label %dec_label_pc_5c7d5

dec_label_pc_5c7d5:                               ; preds = %dec_label_pc_5c78c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5c7da

dec_label_pc_5c7da:                               ; preds = %dec_label_pc_5c7d5, %dec_label_pc_5c78c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_5c7dc:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_5c812:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5c821:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPP14_twoIntsStructEvT_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5c853:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP14_twoIntsStructEEvT_S5_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5c87e:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_5c8a0:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_5c8b2:
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
dec_label_pc_5c910:
  %0 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE7destroyIS1_EEvRS2_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_5c944:
  %0 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5c962:
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
dec_label_pc_5c9a5:
  %0 = call i64 @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPP14_twoIntsStructS2_ET0_T_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5c9fc:
  %0 = call ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5ca4b:
  call void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_5ca7d:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5cab2:
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
  br i1 %5, label %dec_label_pc_5cb15, label %dec_label_pc_5cb09

dec_label_pc_5cb09:                               ; preds = %dec_label_pc_5cab2
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_5cb15

dec_label_pc_5cb15:                               ; preds = %dec_label_pc_5cb09, %dec_label_pc_5cab2
  %7 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_5cb75, label %dec_label_pc_5cb63

dec_label_pc_5cb63:                               ; preds = %dec_label_pc_5cb15
  %14 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_5cb75, label %dec_label_pc_5cb87

dec_label_pc_5cb75:                               ; preds = %dec_label_pc_5cb63, %dec_label_pc_5cb15
  %16 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_5cb87

dec_label_pc_5cb87:                               ; preds = %dec_label_pc_5cb63, %dec_label_pc_5cb75
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_5cb9b, label %dec_label_pc_5cb96

dec_label_pc_5cb96:                               ; preds = %dec_label_pc_5cb87
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5cb9b

dec_label_pc_5cb9b:                               ; preds = %dec_label_pc_5cb96, %dec_label_pc_5cb87
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_5cba2:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_5cbd7, label %dec_label_pc_5cbbd

dec_label_pc_5cbbd:                               ; preds = %dec_label_pc_5cba2
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8allocateERS2_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_5cbd7

dec_label_pc_5cbd7:                               ; preds = %dec_label_pc_5cba2, %dec_label_pc_5cbbd
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_5cbd9:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5cc30:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIP14_twoIntsStructEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5cc5e:
  call void @_ZNSaIP14_twoIntsStructEC2ERKS1_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_5cc94:
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
dec_label_pc_5ccee:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5cd24:
  %0 = mul i64 %arg3, 8
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP14_twoIntsStructEEvT_S5_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5cd59:
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_5cd6c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_5cd82:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5cd94:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE7destroyIS1_EEvRS2_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5cdd1:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE7destroyIS2_EEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5cdfb:
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
  br i1 %7, label %dec_label_pc_5ce50, label %dec_label_pc_5ce4b

dec_label_pc_5ce4b:                               ; preds = %dec_label_pc_5cdfb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5ce50

dec_label_pc_5ce50:                               ; preds = %dec_label_pc_5ce4b, %dec_label_pc_5cdfb
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_5ce52:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5ce87:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5ce99:
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
dec_label_pc_5cf07:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPP14_twoIntsStructS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5cf39:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP14_twoIntsStructmS3_EET_S5_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_5cf6e:
  %0 = call i64 @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE11_S_max_sizeERKS2_(ptr %1)
  ret i64 %2
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_5cf94:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5cfc2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_5d00c, label %dec_label_pc_5d007

dec_label_pc_5d007:                               ; preds = %dec_label_pc_5cfc2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5d00c

dec_label_pc_5d00c:                               ; preds = %dec_label_pc_5d007, %dec_label_pc_5cfc2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIP14_twoIntsStructEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5d00e:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d038:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5d06a:
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
dec_label_pc_5d0ae:
  ret void
}

define ptr @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5d0c1:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5d0d4:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d101:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP14_twoIntsStructES5_EET0_T_S8_S7_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5d136:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d148:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5d179:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPP14_twoIntsStructS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_5d18f:
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg1, %arg2
  %1 = icmp eq i1 %0, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %1, label %dec_label_pc_5d1b0, label %dec_label_pc_5d1ca

dec_label_pc_5d1b0:                               ; preds = %dec_label_pc_5d18f, %dec_label_pc_5d1b0
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %2 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i64 %arg3, ptr %2, align 8
  %3 = add i64 %stack_var_-32.01.reload, 8
  %4 = icmp eq i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %3, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %5, label %dec_label_pc_5d1b0, label %dec_label_pc_5d1ca

dec_label_pc_5d1ca:                               ; preds = %dec_label_pc_5d1b0, %dec_label_pc_5d18f
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP14_twoIntsStructmS3_EET_S5_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d1ce:
  %0 = call ptr @_ZSt6fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE11_S_max_sizeERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5d1ff:
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
  br i1 %5, label %dec_label_pc_5d266, label %dec_label_pc_5d261

dec_label_pc_5d261:                               ; preds = %dec_label_pc_5d1ff
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5d266

dec_label_pc_5d266:                               ; preds = %dec_label_pc_5d261, %dec_label_pc_5d1ff
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_5d268:
  ret i64 1152921504606846975
}

define i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d280:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_5d2d2, label %dec_label_pc_5d2b8

dec_label_pc_5d2b8:                               ; preds = %dec_label_pc_5d280
  %6 = icmp ult i64 %arg2, 2305843009213693952
  br i1 %6, label %dec_label_pc_5d2cd, label %dec_label_pc_5d2c8

dec_label_pc_5d2c8:                               ; preds = %dec_label_pc_5d2b8
  %7 = call i64 @anon2()
  br label %dec_label_pc_5d2cd

dec_label_pc_5d2cd:                               ; preds = %dec_label_pc_5d2c8, %dec_label_pc_5d2b8
  %8 = call i64 @anon3()
  br label %dec_label_pc_5d2d2

dec_label_pc_5d2d2:                               ; preds = %dec_label_pc_5d2cd, %dec_label_pc_5d280
  %9 = mul i64 %arg2, 8
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5d2e6:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d2f9:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP14_twoIntsStructES5_EET0_T_S8_S7_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d348:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d379:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d3aa:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPP14_twoIntsStructENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8max_sizeERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5d3f2:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg1) local_unnamed_addr {
dec_label_pc_5d410:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d422:
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
dec_label_pc_5d490:
  %0 = call i64 @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d4df:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  %.pre = and i64 %2, -8
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_5d53e, label %dec_label_pc_5d50e

dec_label_pc_5d50e:                               ; preds = %dec_label_pc_5d4df
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_5d53e

dec_label_pc_5d53e:                               ; preds = %dec_label_pc_5d4df, %dec_label_pc_5d50e
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPP14_twoIntsStructENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5d555:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_5d563:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_5d588, label %dec_label_pc_5d5c2

dec_label_pc_5d588:                               ; preds = %dec_label_pc_5d563
  %2 = mul i64 %arg2, 8
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_5d5c2

dec_label_pc_5d5c2:                               ; preds = %dec_label_pc_5d563, %dec_label_pc_5d588
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_5d5c4:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_5d5e2:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d603:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_5d634:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPP14_twoIntsStructE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d65a:
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
dec_label_pc_5d6c8:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPP14_twoIntsStructE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_5d6fa:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d70f:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d740:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_5d78e, label %dec_label_pc_5d76f

dec_label_pc_5d76f:                               ; preds = %dec_label_pc_5d740
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_5d78e

dec_label_pc_5d78e:                               ; preds = %dec_label_pc_5d76f, %dec_label_pc_5d740
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d7a3:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5d7d4:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_5d822, label %dec_label_pc_5d803

dec_label_pc_5d803:                               ; preds = %dec_label_pc_5d7d4
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_5d822

dec_label_pc_5d822:                               ; preds = %dec_label_pc_5d803, %dec_label_pc_5d7d4
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_5da42:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 8
  %2 = add i64 %1, %0
  ret i64 %2
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_64038:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-104, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_64089, label %dec_label_pc_6407f

dec_label_pc_6407f:                               ; preds = %dec_label_pc_64038
  call void @exit(i32 -1)
  unreachable

dec_label_pc_64089:                               ; preds = %dec_label_pc_64038
  %5 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %5, ptr %stack_var_-96, align 8
  %6 = ptrtoint ptr %stack_var_-96 to i64
  %7 = ptrtoint ptr %stack_var_-56 to i64
  %8 = trunc i64 %7 to i32
  %9 = trunc i64 %6 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %8, i32 %9)
  %10 = load i64, ptr %stack_var_-56, align 8
  %11 = bitcast ptr %stack_var_-104 to ptr
  %12 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %10, i64 1, ptr nonnull %11)
  %13 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %13, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %8, i32 %9)
  %14 = load i64, ptr %stack_var_-56, align 8
  %15 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %14, i64 1, ptr nonnull %11)
  %16 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %16, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %8, i32 %9)
  %17 = load i64, ptr %stack_var_-56, align 8
  %18 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %17, i64 1, ptr nonnull %11)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %19 = call i64 @anon1(i64 %7)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(ptr nonnull %stack_var_-88)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_641c6, label %dec_label_pc_641c1

dec_label_pc_641c1:                               ; preds = %dec_label_pc_64089
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_641c6

dec_label_pc_641c6:                               ; preds = %dec_label_pc_641c1, %dec_label_pc_64089
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_642b5:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm(ptr %2, i64 2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_64305

dec_label_pc_64305:                               ; preds = %dec_label_pc_64305, %dec_label_pc_642b5
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
  br i1 %exitcond, label %dec_label_pc_6433b, label %dec_label_pc_64305

dec_label_pc_6433b:                               ; preds = %dec_label_pc_64305
  %13 = inttoptr i64 %5 to ptr
  %14 = inttoptr i64 %5 to ptr
  %15 = call ptr @memmove(ptr %14, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %13)
  call void @free(ptr %14)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_6438c, label %dec_label_pc_64387

dec_label_pc_64387:                               ; preds = %dec_label_pc_6433b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6438c

dec_label_pc_6438c:                               ; preds = %dec_label_pc_64387, %dec_label_pc_6433b
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

