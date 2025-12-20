@global_var_4371e = external constant [23 x i8]
@global_var_44d70 = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_1155f:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_11575:
  ret i64 %arg1
}

define void @_ZNSt12_Vector_baseIPiSaIS0_EE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_11588:
  call void @_ZNSaIPiED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIPiSaIS0_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_115a8:
  call void @_ZNSt12_Vector_baseIPiSaIS0_EE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIPiSaIS0_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_115c8:
  call void @_ZNSt12_Vector_baseIPiSaIS0_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIPiSaIS0_EE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_115e8:
  call void @_ZNSaIPiEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIPiSaIS0_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIPiED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_11614:
  call void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIPiSaIS0_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_11634:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  %6 = bitcast ptr %result to ptr
  %7 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE13_M_deallocateEPS0_m(ptr %result, ptr %6, i64 %5)
  call void @_ZNSt12_Vector_baseIPiSaIS0_EE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIPiSaIS0_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_11686:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIPiSaIS0_EED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIPiSaIS0_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_116ce:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_1171c, label %dec_label_pc_11717

dec_label_pc_11717:                               ; preds = %dec_label_pc_116ce
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1171c

dec_label_pc_1171c:                               ; preds = %dec_label_pc_11717, %dec_label_pc_116ce
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_1171e:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIPiSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_1174c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIPiSaIS0_EE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKPiSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIPiSaIS0_EE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIPiSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIPiSaIS0_EE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_1180f, label %dec_label_pc_1180a

dec_label_pc_1180a:                               ; preds = %dec_label_pc_1174c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1180f

dec_label_pc_1180f:                               ; preds = %dec_label_pc_1180a, %dec_label_pc_1174c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIPiSaIS0_EEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_11812:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPiES1_E17_S_select_on_copyERKS2_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIPiSaIS0_EE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIPiSaIS0_EEC2EmRKS1_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  call void @_ZNSaIPiED2Ev(ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %7 = call i64 @_ZNKSt6vectorIPiSaIS0_EE3endEv(ptr %arg2)
  %8 = call i64 @_ZNKSt6vectorIPiSaIS0_EE5beginEv(ptr %arg2)
  %9 = bitcast ptr %result to ptr
  %10 = inttoptr i64 %6 to ptr
  %11 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(i64 %8, i64 %7, ptr %9, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %0, 8
  %14 = inttoptr i64 %13 to ptr
  store i64 %12, ptr %14, align 8
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_11926, label %dec_label_pc_11921

dec_label_pc_11921:                               ; preds = %dec_label_pc_11812
  call void @__stack_chk_fail()
  br label %dec_label_pc_11926

dec_label_pc_11926:                               ; preds = %dec_label_pc_11921, %dec_label_pc_11812
  ret void
}

define void @_ZNSaIPiEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_11932:
  call void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIPiSaIS0_EE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_11952:
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

define void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_11984:
  ret void
}

define i64 @_ZNSt12_Vector_baseIPiSaIS0_EE13_M_deallocateEPS0_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_11994:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_119ca, label %dec_label_pc_119b3

dec_label_pc_119b3:                               ; preds = %dec_label_pc_11994
  %1 = call i64 @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_119ca

dec_label_pc_119ca:                               ; preds = %dec_label_pc_119b3, %dec_label_pc_11994
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_119ce:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_119e0:
  call void @_ZSt8_DestroyIPPiEvT_S2_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_11a0e:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_11a30:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIPiSaIS0_EE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_11a42:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_11a8c, label %dec_label_pc_11a87

dec_label_pc_11a87:                               ; preds = %dec_label_pc_11a42
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_11a8c

dec_label_pc_11a8c:                               ; preds = %dec_label_pc_11a87, %dec_label_pc_11a42
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKPiSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_11a8e:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define i64 @_ZNSt6vectorIPiSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_11ad2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_11fd3, label %dec_label_pc_11b14

dec_label_pc_11b14:                               ; preds = %dec_label_pc_11ad2
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
  br i1 %11, label %dec_label_pc_11d41, label %dec_label_pc_11b3b

dec_label_pc_11b3b:                               ; preds = %dec_label_pc_11b14
  call void @_ZNSt6vectorIPiSaIS0_EE16_Temporary_valueC2IJRKS0_EEEPS2_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %12 = call i64 @_ZNSt6vectorIPiSaIS0_EE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %13 = inttoptr i64 %12 to ptr
  %14 = call i64 @_ZNSt6vectorIPiSaIS0_EE3endEv(ptr %result)
  store i64 %14, ptr %stack_var_-120, align 8
  %15 = call i64 @_ZN9__gnu_cxxmiIPPiSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %16 = load i64, ptr %7, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt i64 %15, %arg3
  %19 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %18, label %dec_label_pc_11ba9, label %dec_label_pc_11c82

dec_label_pc_11ba9:                               ; preds = %dec_label_pc_11b3b
  %20 = load i64, ptr %7, align 8
  %21 = mul i64 %arg3, 8
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = inttoptr i64 %20 to ptr
  %25 = inttoptr i64 %19 to ptr
  %26 = call ptr @_ZSt22__uninitialized_move_aIPPiS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %23, ptr %24, ptr %24, ptr %25)
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %27, %21
  store i64 %28, ptr %7, align 8
  %29 = sub i64 %16, %21
  %30 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = inttoptr i64 %29 to ptr
  %35 = call ptr @_ZSt13move_backwardIPPiS1_ET0_T_S3_S2_(ptr %33, ptr %34, ptr %17)
  %36 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %21
  %40 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %41 = inttoptr i64 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %39 to ptr
  call void @_ZSt4fillIPPiS0_EvT_S2_RKT0_(ptr %43, ptr %44, ptr %13)
  br label %dec_label_pc_11d30

dec_label_pc_11c82:                               ; preds = %dec_label_pc_11b3b
  %45 = sub i64 %arg3, %15
  %46 = load i64, ptr %7, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = inttoptr i64 %19 to ptr
  %49 = call ptr @_ZSt24__uninitialized_fill_n_aIPPimS0_S0_ET_S2_T0_RKT1_RSaIT2_E(ptr %47, i64 %45, ptr %13, ptr %48)
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %54 = inttoptr i64 %53 to ptr
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = inttoptr i64 %52 to ptr
  %58 = inttoptr i64 %51 to ptr
  %59 = call ptr @_ZSt22__uninitialized_move_aIPPiS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %56, ptr %17, ptr %57, ptr %58)
  %60 = load i64, ptr %7, align 8
  %61 = mul i64 %15, 8
  %62 = add i64 %60, %61
  store i64 %62, ptr %7, align 8
  %63 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  call void @_ZSt4fillIPPiS0_EvT_S2_RKT0_(ptr %66, ptr %17, ptr %13)
  br label %dec_label_pc_11d30

dec_label_pc_11d30:                               ; preds = %dec_label_pc_11c82, %dec_label_pc_11ba9
  call void @_ZNSt6vectorIPiSaIS0_EE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_11fd3

dec_label_pc_11d41:                               ; preds = %dec_label_pc_11b14
  %67 = call i64 @_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_4371e)
  %68 = call i64 @_ZNSt6vectorIPiSaIS0_EE5beginEv(ptr %result)
  store i64 %68, ptr %stack_var_-120, align 8
  %69 = call i64 @_ZN9__gnu_cxxmiIPPiSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %70 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE11_M_allocateEm(ptr %result, i64 %67)
  %71 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %72 = mul i64 %69, 8
  %73 = add i64 %72, %70
  %74 = inttoptr i64 %73 to ptr
  %75 = inttoptr i64 %71 to ptr
  %76 = call ptr @_ZSt24__uninitialized_fill_n_aIPPimS0_S0_ET_S2_T0_RKT1_RSaIT2_E(ptr %74, i64 %arg3, ptr %arg4, ptr %75)
  %77 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %78 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %79 = inttoptr i64 %78 to ptr
  %80 = load i64, ptr %79, align 8
  %81 = bitcast ptr %stack_var_-136 to ptr
  %82 = inttoptr i64 %80 to ptr
  %83 = inttoptr i64 %70 to ptr
  %84 = inttoptr i64 %77 to ptr
  %85 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_SaIS0_EET0_T_S4_S3_RT1_(ptr nonnull %81, ptr %82, ptr %83, ptr %84)
  %86 = ptrtoint ptr %85 to i64
  %87 = mul i64 %arg3, 8
  %88 = add i64 %87, %86
  %89 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = inttoptr i64 %90 to ptr
  %96 = inttoptr i64 %88 to ptr
  %97 = inttoptr i64 %89 to ptr
  %98 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %94, ptr %95, ptr %96, ptr %97)
  %99 = ptrtoint ptr %98 to i64
  %100 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %101 = load i64, ptr %7, align 8
  %102 = bitcast ptr %result to ptr
  %103 = inttoptr i64 %101 to ptr
  %104 = inttoptr i64 %100 to ptr
  call void @_ZSt8_DestroyIPPiS0_EvT_S2_RSaIT0_E(ptr %102, ptr %103, ptr %104)
  %105 = load i64, ptr %4, align 8
  %106 = sub i64 %105, %2
  %107 = ashr i64 %106, 3
  %108 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE13_M_deallocateEPS0_m(ptr %result, ptr %102, i64 %107)
  store i64 %70, ptr %result, align 8
  store i64 %99, ptr %7, align 8
  %109 = mul i64 %67, 8
  %110 = add i64 %70, %109
  store i64 %110, ptr %4, align 8
  br label %dec_label_pc_11fd3

dec_label_pc_11fd3:                               ; preds = %dec_label_pc_11d41, %dec_label_pc_11d30, %dec_label_pc_11ad2
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_11fe8, label %dec_label_pc_11fe3

dec_label_pc_11fe3:                               ; preds = %dec_label_pc_11fd3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_11fe8

dec_label_pc_11fe8:                               ; preds = %dec_label_pc_11fe3, %dec_label_pc_11fd3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIPiSaIS0_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_11ff2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_1203c, label %dec_label_pc_12037

dec_label_pc_12037:                               ; preds = %dec_label_pc_11ff2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1203c

dec_label_pc_1203c:                               ; preds = %dec_label_pc_12037, %dec_label_pc_11ff2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_1203e:
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
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr nonnull %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_120a2, label %dec_label_pc_1209d

dec_label_pc_1209d:                               ; preds = %dec_label_pc_1203e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_120a2

dec_label_pc_120a2:                               ; preds = %dec_label_pc_1209d, %dec_label_pc_1203e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIPiSaIS0_EE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_120a4:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPiES1_E17_S_select_on_copyERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_120cb:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIPiEE37select_on_container_copy_constructionERKS1_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_12115, label %dec_label_pc_12110

dec_label_pc_12110:                               ; preds = %dec_label_pc_120cb
  call void @__stack_chk_fail()
  br label %dec_label_pc_12115

dec_label_pc_12115:                               ; preds = %dec_label_pc_12110, %dec_label_pc_120cb
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_1211c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIPiSaIS0_EEC2EmRKS1_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_1212e:
  call void @_ZNSt12_Vector_baseIPiSaIS0_EE12_Vector_implC2ERKS1_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIPiSaIS0_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_12194:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_121de, label %dec_label_pc_121d9

dec_label_pc_121d9:                               ; preds = %dec_label_pc_12194
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_121de

dec_label_pc_121de:                               ; preds = %dec_label_pc_121d9, %dec_label_pc_12194
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIPiSaIS0_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_121e0:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_1222e, label %dec_label_pc_12229

dec_label_pc_12229:                               ; preds = %dec_label_pc_121e0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1222e

dec_label_pc_1222e:                               ; preds = %dec_label_pc_12229, %dec_label_pc_121e0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_12230:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_12266:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_12275:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPPiEvT_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_122a7:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPiEEvT_S4_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_122d2:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_122f4:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIPiSaIS0_EE16_Temporary_valueC2IJRKS0_EEEPS2_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_12306:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKPiEOT_RNSt16remove_referenceIS3_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIPiSaIS0_EE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIPiEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIPiSaIS0_EE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_12364:
  %0 = call i64 @_ZNSt6vectorIPiSaIS0_EE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIPiEE7destroyIS0_EEvRS1_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIPiSaIS0_EE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_12398:
  %0 = call i64 @_ZNSt6vectorIPiSaIS0_EE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPPiSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_123b6:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define ptr @_ZSt22__uninitialized_move_aIPPiS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_123f9:
  %0 = call i64 @_ZSt18make_move_iteratorIPPiESt13move_iteratorIT_ES3_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPPiESt13move_iteratorIT_ES3_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPPiES2_S1_ET0_T_S5_S4_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPPiS1_ET0_T_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12450:
  %0 = call ptr @_ZSt12__miter_baseIPPiET_S2_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPPiET_S2_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPPiS1_ET1_T0_S3_S2_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPPiS0_EvT_S2_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_1249f:
  call void @_ZSt8__fill_aIPPiS0_EvT_S2_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPPimS0_S0_ET_S2_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_124d1:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPPimS0_ET_S2_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12506:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIPiSaIS0_EE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIPiSaIS0_EE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_12569, label %dec_label_pc_1255d

dec_label_pc_1255d:                               ; preds = %dec_label_pc_12506
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_12569

dec_label_pc_12569:                               ; preds = %dec_label_pc_1255d, %dec_label_pc_12506
  %7 = call i64 @_ZNKSt6vectorIPiSaIS0_EE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIPiSaIS0_EE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIPiSaIS0_EE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_125c9, label %dec_label_pc_125b7

dec_label_pc_125b7:                               ; preds = %dec_label_pc_12569
  %14 = call i64 @_ZNKSt6vectorIPiSaIS0_EE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_125c9, label %dec_label_pc_125db

dec_label_pc_125c9:                               ; preds = %dec_label_pc_125b7, %dec_label_pc_12569
  %16 = call i64 @_ZNKSt6vectorIPiSaIS0_EE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_125db

dec_label_pc_125db:                               ; preds = %dec_label_pc_125b7, %dec_label_pc_125c9
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_125ef, label %dec_label_pc_125ea

dec_label_pc_125ea:                               ; preds = %dec_label_pc_125db
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_125ef

dec_label_pc_125ef:                               ; preds = %dec_label_pc_125ea, %dec_label_pc_125db
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIPiSaIS0_EE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_125f6:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_1262b, label %dec_label_pc_12611

dec_label_pc_12611:                               ; preds = %dec_label_pc_125f6
  %1 = call i64 @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_1262b

dec_label_pc_1262b:                               ; preds = %dec_label_pc_125f6, %dec_label_pc_12611
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPPiS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_1262d:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIPS0_EET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIPS0_EET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPPiES2_S1_ET0_T_S5_S4_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIPiEE37select_on_container_copy_constructionERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_12684:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIPiEC2ERKS0_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIPiSaIS0_EE12_Vector_implC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_126b2:
  call void @_ZNSaIPiEC2ERKS0_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIPiSaIS0_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIPiSaIS0_EE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_126e8:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIPiSaIS0_EE11_M_allocateEm(ptr %result, i64 %arg2)
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

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12742:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_12778:
  %0 = mul i64 %arg3, 8
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPiEEvT_S4_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_127ad:
  ret void
}

define i64 @_ZNSt6vectorIPiSaIS0_EE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_127c0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKPiEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_127d6:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIPiEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_127e8:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPiEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIPiE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIPiEE7destroyIS0_EEvRS1_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_12825:
  call void @_ZN9__gnu_cxx13new_allocatorIPiE7destroyIS1_EEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPPiESt13move_iteratorIT_ES3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_1284f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPPiEONSt16remove_referenceIT_E4typeEOS4_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPPiEC2ES1_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_128a4, label %dec_label_pc_1289f

dec_label_pc_1289f:                               ; preds = %dec_label_pc_1284f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_128a4

dec_label_pc_128a4:                               ; preds = %dec_label_pc_1289f, %dec_label_pc_1284f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPPiES2_S1_ET0_T_S5_S4_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_128a6:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPPiES2_ET0_T_S5_S4_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPPiET_S2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_128db:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPPiS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_128ed:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPPiET_S2_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPPiET_S2_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPPiET_S2_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPPiS1_ET1_T0_S3_S2_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPPiS0_EvT_S2_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_1295b:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPPiS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPPimS0_ET_S2_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_1298d:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPimS2_EET_S4_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIPiSaIS0_EE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_129c2:
  %0 = call i64 @_ZNKSt12_Vector_baseIPiSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIPiSaIS0_EE11_S_max_sizeERKS1_(ptr %1)
  ret i64 %2
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_129e8:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_12a17:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIPS0_EET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_12a45:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPPiEC2ES1_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_12a8f, label %dec_label_pc_12a8a

dec_label_pc_12a8a:                               ; preds = %dec_label_pc_12a45
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_12a8f

dec_label_pc_12a8f:                               ; preds = %dec_label_pc_12a8a, %dec_label_pc_12a45
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIPiEC2ERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_12a92:
  call void @_ZN9__gnu_cxx13new_allocatorIPiEC2ERKS2_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12abc:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIPiE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_12aee:
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

define void @_ZN9__gnu_cxx13new_allocatorIPiE7destroyIS1_EEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_12b32:
  ret void
}

define ptr @_ZSt4moveIRPPiEONSt16remove_referenceIT_E4typeEOS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_12b45:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPPiEC2ES1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_12b58:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPPiEONSt16remove_referenceIT_E4typeEOS4_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPPiES2_ET0_T_S5_S4_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12b85:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPiES4_EET0_T_S7_S6_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPPiET_S2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_12bba:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPPiS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12bcc:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPPiS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_12bfd:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPPiS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_12c13:
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg1, %arg2
  %1 = icmp eq i1 %0, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %1, label %dec_label_pc_12c34, label %dec_label_pc_12c4e

dec_label_pc_12c34:                               ; preds = %dec_label_pc_12c13, %dec_label_pc_12c34
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %2 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i64 %arg3, ptr %2, align 8
  %3 = add i64 %stack_var_-32.01.reload, 8
  %4 = icmp eq i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %3, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %5, label %dec_label_pc_12c34, label %dec_label_pc_12c4e

dec_label_pc_12c4e:                               ; preds = %dec_label_pc_12c34, %dec_label_pc_12c13
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPimS2_EET_S4_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12c52:
  %0 = call ptr @_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIPiSaIS0_EE11_S_max_sizeERKS1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_12c83:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 1152921504606846975, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIPiEE8max_sizeERKS1_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_12cea, label %dec_label_pc_12ce5

dec_label_pc_12ce5:                               ; preds = %dec_label_pc_12c83
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_12cea

dec_label_pc_12cea:                               ; preds = %dec_label_pc_12ce5, %dec_label_pc_12c83
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_12cec:
  ret i64 1152921504606846975
}

define i64 @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12d04:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_12d56, label %dec_label_pc_12d3c

dec_label_pc_12d3c:                               ; preds = %dec_label_pc_12d04
  %6 = icmp ult i64 %arg2, 2305843009213693952
  br i1 %6, label %dec_label_pc_12d51, label %dec_label_pc_12d4c

dec_label_pc_12d4c:                               ; preds = %dec_label_pc_12d3c
  %7 = call i64 @anon2()
  br label %dec_label_pc_12d51

dec_label_pc_12d51:                               ; preds = %dec_label_pc_12d4c, %dec_label_pc_12d3c
  %8 = call i64 @anon3()
  br label %dec_label_pc_12d56

dec_label_pc_12d56:                               ; preds = %dec_label_pc_12d51, %dec_label_pc_12d04
  %9 = mul i64 %arg2, 8
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorIPiEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_12d6a:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12d7d:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEET_S9_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEET_S9_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPiES4_EET0_T_S7_S6_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12dcc:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPPiES2_ET0_T_S5_S4_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPPiS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12dfd:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12e2e:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPPiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPPimS0_ET_S2_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIPiEE8max_sizeERKS1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_12e76:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_12e94:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEET_S9_(i64 %arg1) local_unnamed_addr {
dec_label_pc_12ec3:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12ed5:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPPiET_S2_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKPiSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKPiSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKPiPS0_ET1_T0_S5_S4_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPPiES2_ET0_T_S5_S4_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12f43:
  %0 = call i64 @_ZSt12__miter_baseIPPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPPiS1_ET1_T0_S3_S2_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_12f92:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  %.pre = and i64 %2, -8
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_12ff1, label %dec_label_pc_12fc1

dec_label_pc_12fc1:                               ; preds = %dec_label_pc_12f92
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_12ff1

dec_label_pc_12ff1:                               ; preds = %dec_label_pc_12f92, %dec_label_pc_12fc1
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPPiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_13008:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPPimS0_ET_S2_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_13016:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_1303b, label %dec_label_pc_13075

dec_label_pc_1303b:                               ; preds = %dec_label_pc_13016
  %2 = mul i64 %arg2, 8
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPPiS0_EvT_S2_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_13075

dec_label_pc_13075:                               ; preds = %dec_label_pc_13016, %dec_label_pc_1303b
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_13078:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKPiSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_13096:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKPiPS0_ET1_T0_S5_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_130b7:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKPiPS0_ET1_T0_S5_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_130e8:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPPiE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPPiET_S2_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPPiS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_1310e:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPPiET_S2_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPPiET_S2_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPPiET_S2_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPPiS1_ET1_T0_S3_S2_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKPiPS0_ET1_T0_S5_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_1317c:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPPiE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_131ae:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPPiS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_131c3:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPPiS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_131f4:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_13242, label %dec_label_pc_13223

dec_label_pc_13223:                               ; preds = %dec_label_pc_131f4
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_13242

dec_label_pc_13242:                               ; preds = %dec_label_pc_13223, %dec_label_pc_131f4
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPPiS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_13257:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_13288:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_132d6, label %dec_label_pc_132b7

dec_label_pc_132b7:                               ; preds = %dec_label_pc_13288
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_132d6

dec_label_pc_132d6:                               ; preds = %dec_label_pc_132b7, %dec_label_pc_13288
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @_ZNSt6vectorIPiSaIS0_EEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_13470:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 8
  %2 = add i64 %1, %0
  ret i64 %2
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_17975:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIPiSaIS0_EEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call ptr @malloc(i32 10)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-104, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_179c6, label %dec_label_pc_179bc

dec_label_pc_179bc:                               ; preds = %dec_label_pc_17975
  call void @exit(i32 -1)
  unreachable

dec_label_pc_179c6:                               ; preds = %dec_label_pc_17975
  %5 = call i64 @_ZNSt6vectorIPiSaIS0_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %5, ptr %stack_var_-96, align 8
  %6 = ptrtoint ptr %stack_var_-96 to i64
  %7 = ptrtoint ptr %stack_var_-56 to i64
  %8 = trunc i64 %7 to i32
  %9 = trunc i64 %6 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE(i32 %8, i32 %9)
  %10 = load i64, ptr %stack_var_-56, align 8
  %11 = bitcast ptr %stack_var_-104 to ptr
  %12 = call i64 @_ZNSt6vectorIPiSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_(ptr nonnull %stack_var_-88, i64 %10, i64 1, ptr nonnull %11)
  %13 = call i64 @_ZNSt6vectorIPiSaIS0_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %13, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE(i32 %8, i32 %9)
  %14 = load i64, ptr %stack_var_-56, align 8
  %15 = call i64 @_ZNSt6vectorIPiSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_(ptr nonnull %stack_var_-88, i64 %14, i64 1, ptr nonnull %11)
  %16 = call i64 @_ZNSt6vectorIPiSaIS0_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %16, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPiSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE(i32 %8, i32 %9)
  %17 = load i64, ptr %stack_var_-56, align 8
  %18 = call i64 @_ZNSt6vectorIPiSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_(ptr nonnull %stack_var_-88, i64 %17, i64 1, ptr nonnull %11)
  call void @_ZNSt6vectorIPiSaIS0_EEC2ERKS2_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %19 = call i64 @anon1(i64 %7)
  call void @_ZNSt6vectorIPiSaIS0_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIPiSaIS0_EED2Ev(ptr nonnull %stack_var_-88)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_17b03, label %dec_label_pc_17afe

dec_label_pc_17afe:                               ; preds = %dec_label_pc_179c6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_17b03

dec_label_pc_17b03:                               ; preds = %dec_label_pc_17afe, %dec_label_pc_179c6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_17cad:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = inttoptr i64 %arg1 to ptr
  %2 = call i64 @_ZNSt6vectorIPiSaIS0_EEixEm(ptr %1, i64 2)
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memcpy(ptr %5, ptr nonnull %stack_var_-56, i32 40)
  %7 = inttoptr i64 %4 to ptr
  %8 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %8)
  call void @free(ptr %5)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_17d52, label %dec_label_pc_17d4d

dec_label_pc_17d4d:                               ; preds = %dec_label_pc_17cad
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_17d52

dec_label_pc_17d52:                               ; preds = %dec_label_pc_17d4d, %dec_label_pc_17cad
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @_ZSt20__throw_length_errorPKc(ptr) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

