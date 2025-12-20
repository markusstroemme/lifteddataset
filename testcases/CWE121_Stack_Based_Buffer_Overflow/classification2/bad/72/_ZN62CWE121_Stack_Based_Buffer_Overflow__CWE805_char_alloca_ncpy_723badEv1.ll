@global_var_1000 = external global ptr
@global_var_81910 = external constant [23 x i8]
@0 = external global i32
@global_var_fff = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_57ae2:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_57af8:
  ret i64 %arg1
}

define void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57b0a:
  call void @_ZNSaIPcED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIPcSaIS0_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57b2a:
  call void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIPcSaIS0_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57b4a:
  call void @_ZNSt12_Vector_baseIPcSaIS0_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57b6a:
  call void @_ZNSaIPcEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIPcSaIS0_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIPcED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57b96:
  call void @_ZN9__gnu_cxx13new_allocatorIPcED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIPcSaIS0_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57bb6:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  %6 = bitcast ptr %result to ptr
  %7 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m(ptr %result, ptr %6, i64 %5)
  call void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIPcSaIS0_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57c08:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIPcSaIS0_EED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIPcSaIS0_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_57c50:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_57c9e, label %dec_label_pc_57c99

dec_label_pc_57c99:                               ; preds = %dec_label_pc_57c50
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_57c9e

dec_label_pc_57c9e:                               ; preds = %dec_label_pc_57c99, %dec_label_pc_57c50
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_57ca0:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIPcSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_57cce:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIPcSaIS0_EE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIPcSaIS0_EE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIPcSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIPcSaIS0_EE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_57d91, label %dec_label_pc_57d8c

dec_label_pc_57d8c:                               ; preds = %dec_label_pc_57cce
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_57d91

dec_label_pc_57d91:                               ; preds = %dec_label_pc_57d8c, %dec_label_pc_57cce
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIPcSaIS0_EEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_57d94:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPcES1_E17_S_select_on_copyERKS2_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIPcSaIS0_EEC2EmRKS1_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  call void @_ZNSaIPcED2Ev(ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %7 = call i64 @_ZNKSt6vectorIPcSaIS0_EE3endEv(ptr %arg2)
  %8 = call i64 @_ZNKSt6vectorIPcSaIS0_EE5beginEv(ptr %arg2)
  %9 = bitcast ptr %result to ptr
  %10 = inttoptr i64 %6 to ptr
  %11 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(i64 %8, i64 %7, ptr %9, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %0, 8
  %14 = inttoptr i64 %13 to ptr
  store i64 %12, ptr %14, align 8
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_57ea8, label %dec_label_pc_57ea3

dec_label_pc_57ea3:                               ; preds = %dec_label_pc_57d94
  call void @__stack_chk_fail()
  br label %dec_label_pc_57ea8

dec_label_pc_57ea8:                               ; preds = %dec_label_pc_57ea3, %dec_label_pc_57d94
  ret void
}

define void @_ZNSaIPcEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57eb4:
  call void @_ZN9__gnu_cxx13new_allocatorIPcEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIPcSaIS0_EE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57ed4:
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

define void @_ZN9__gnu_cxx13new_allocatorIPcED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_57f06:
  ret void
}

define i64 @_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_57f16:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_57f4c, label %dec_label_pc_57f35

dec_label_pc_57f35:                               ; preds = %dec_label_pc_57f16
  %1 = call i64 @_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_57f4c

dec_label_pc_57f4c:                               ; preds = %dec_label_pc_57f35, %dec_label_pc_57f16
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_57f50:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_57f62:
  call void @_ZSt8_DestroyIPPcEvT_S2_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_57f90:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_57fb2:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIPcSaIS0_EE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_57fc4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_5800e, label %dec_label_pc_58009

dec_label_pc_58009:                               ; preds = %dec_label_pc_57fc4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5800e

dec_label_pc_5800e:                               ; preds = %dec_label_pc_58009, %dec_label_pc_57fc4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_58010:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define i64 @_ZNSt6vectorIPcSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_58054:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_58555, label %dec_label_pc_58096

dec_label_pc_58096:                               ; preds = %dec_label_pc_58054
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
  br i1 %11, label %dec_label_pc_582c3, label %dec_label_pc_580bd

dec_label_pc_580bd:                               ; preds = %dec_label_pc_58096
  call void @_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueC2IJRKS0_EEEPS2_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %12 = call i64 @_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %13 = inttoptr i64 %12 to ptr
  %14 = call i64 @_ZNSt6vectorIPcSaIS0_EE3endEv(ptr %result)
  store i64 %14, ptr %stack_var_-120, align 8
  %15 = call i64 @_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %16 = load i64, ptr %7, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt i64 %15, %arg3
  %19 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %18, label %dec_label_pc_5812b, label %dec_label_pc_58204

dec_label_pc_5812b:                               ; preds = %dec_label_pc_580bd
  %20 = load i64, ptr %7, align 8
  %21 = mul i64 %arg3, 8
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = inttoptr i64 %20 to ptr
  %25 = inttoptr i64 %19 to ptr
  %26 = call ptr @_ZSt22__uninitialized_move_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %23, ptr %24, ptr %24, ptr %25)
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %27, %21
  store i64 %28, ptr %7, align 8
  %29 = sub i64 %16, %21
  %30 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = inttoptr i64 %29 to ptr
  %35 = call ptr @_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_(ptr %33, ptr %34, ptr %17)
  %36 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %21
  %40 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %41 = inttoptr i64 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %39 to ptr
  call void @_ZSt4fillIPPcS0_EvT_S2_RKT0_(ptr %43, ptr %44, ptr %13)
  br label %dec_label_pc_582b2

dec_label_pc_58204:                               ; preds = %dec_label_pc_580bd
  %45 = sub i64 %arg3, %15
  %46 = load i64, ptr %7, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = inttoptr i64 %19 to ptr
  %49 = call ptr @_ZSt24__uninitialized_fill_n_aIPPcmS0_S0_ET_S2_T0_RKT1_RSaIT2_E(ptr %47, i64 %45, ptr %13, ptr %48)
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %54 = inttoptr i64 %53 to ptr
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = inttoptr i64 %52 to ptr
  %58 = inttoptr i64 %51 to ptr
  %59 = call ptr @_ZSt22__uninitialized_move_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %56, ptr %17, ptr %57, ptr %58)
  %60 = load i64, ptr %7, align 8
  %61 = mul i64 %15, 8
  %62 = add i64 %60, %61
  store i64 %62, ptr %7, align 8
  %63 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  call void @_ZSt4fillIPPcS0_EvT_S2_RKT0_(ptr %66, ptr %17, ptr %13)
  br label %dec_label_pc_582b2

dec_label_pc_582b2:                               ; preds = %dec_label_pc_58204, %dec_label_pc_5812b
  call void @_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_58555

dec_label_pc_582c3:                               ; preds = %dec_label_pc_58096
  %67 = call i64 @_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_81910)
  %68 = call i64 @_ZNSt6vectorIPcSaIS0_EE5beginEv(ptr %result)
  store i64 %68, ptr %stack_var_-120, align 8
  %69 = call i64 @_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %70 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm(ptr %result, i64 %67)
  %71 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %72 = mul i64 %69, 8
  %73 = add i64 %72, %70
  %74 = inttoptr i64 %73 to ptr
  %75 = inttoptr i64 %71 to ptr
  %76 = call ptr @_ZSt24__uninitialized_fill_n_aIPPcmS0_S0_ET_S2_T0_RKT1_RSaIT2_E(ptr %74, i64 %arg3, ptr %arg4, ptr %75)
  %77 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %78 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %79 = inttoptr i64 %78 to ptr
  %80 = load i64, ptr %79, align 8
  %81 = bitcast ptr %stack_var_-136 to ptr
  %82 = inttoptr i64 %80 to ptr
  %83 = inttoptr i64 %70 to ptr
  %84 = inttoptr i64 %77 to ptr
  %85 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_(ptr nonnull %81, ptr %82, ptr %83, ptr %84)
  %86 = ptrtoint ptr %85 to i64
  %87 = mul i64 %arg3, 8
  %88 = add i64 %87, %86
  %89 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-136)
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = inttoptr i64 %90 to ptr
  %96 = inttoptr i64 %88 to ptr
  %97 = inttoptr i64 %89 to ptr
  %98 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %94, ptr %95, ptr %96, ptr %97)
  %99 = ptrtoint ptr %98 to i64
  %100 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %101 = load i64, ptr %7, align 8
  %102 = bitcast ptr %result to ptr
  %103 = inttoptr i64 %101 to ptr
  %104 = inttoptr i64 %100 to ptr
  call void @_ZSt8_DestroyIPPcS0_EvT_S2_RSaIT0_E(ptr %102, ptr %103, ptr %104)
  %105 = load i64, ptr %4, align 8
  %106 = sub i64 %105, %2
  %107 = ashr i64 %106, 3
  %108 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m(ptr %result, ptr %102, i64 %107)
  store i64 %70, ptr %result, align 8
  store i64 %99, ptr %7, align 8
  %109 = mul i64 %67, 8
  %110 = add i64 %70, %109
  store i64 %110, ptr %4, align 8
  br label %dec_label_pc_58555

dec_label_pc_58555:                               ; preds = %dec_label_pc_582c3, %dec_label_pc_582b2, %dec_label_pc_58054
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_5856a, label %dec_label_pc_58565

dec_label_pc_58565:                               ; preds = %dec_label_pc_58555
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5856a

dec_label_pc_5856a:                               ; preds = %dec_label_pc_58565, %dec_label_pc_58555
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIPcSaIS0_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_58574:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_585be, label %dec_label_pc_585b9

dec_label_pc_585b9:                               ; preds = %dec_label_pc_58574
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_585be

dec_label_pc_585be:                               ; preds = %dec_label_pc_585b9, %dec_label_pc_58574
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_585c0:
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
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr nonnull %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_58624, label %dec_label_pc_5861f

dec_label_pc_5861f:                               ; preds = %dec_label_pc_585c0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_58624

dec_label_pc_58624:                               ; preds = %dec_label_pc_5861f, %dec_label_pc_585c0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_58626:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIPcES1_E17_S_select_on_copyERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_5864d:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIPcEE37select_on_container_copy_constructionERKS1_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_58697, label %dec_label_pc_58692

dec_label_pc_58692:                               ; preds = %dec_label_pc_5864d
  call void @__stack_chk_fail()
  br label %dec_label_pc_58697

dec_label_pc_58697:                               ; preds = %dec_label_pc_58692, %dec_label_pc_5864d
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_5869e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIPcSaIS0_EEC2EmRKS1_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_586b0:
  call void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implC2ERKS1_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIPcSaIS0_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_58716:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_58760, label %dec_label_pc_5875b

dec_label_pc_5875b:                               ; preds = %dec_label_pc_58716
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_58760

dec_label_pc_58760:                               ; preds = %dec_label_pc_5875b, %dec_label_pc_58716
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIPcSaIS0_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_58762:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_587b0, label %dec_label_pc_587ab

dec_label_pc_587ab:                               ; preds = %dec_label_pc_58762
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_587b0

dec_label_pc_587b0:                               ; preds = %dec_label_pc_587ab, %dec_label_pc_58762
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_587b2:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIPcEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_587e8:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_587f7:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPPcEvT_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_58829:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_58854:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_58876:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueC2IJRKS0_EEEPS2_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_58888:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIPcSaIS0_EE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_588e6:
  %0 = call i64 @_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_5891a:
  %0 = call i64 @_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPPcSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_58938:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define ptr @_ZSt22__uninitialized_move_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_5897b:
  %0 = call i64 @_ZSt18make_move_iteratorIPPcESt13move_iteratorIT_ES3_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPPcESt13move_iteratorIT_ES3_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPPcES2_S1_ET0_T_S5_S4_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_589d2:
  %0 = call ptr @_ZSt12__miter_baseIPPcET_S2_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPPcET_S2_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPPcS1_ET1_T0_S3_S2_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPPcS0_EvT_S2_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_58a21:
  call void @_ZSt8__fill_aIPPcS0_EvT_S2_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPPcmS0_S0_ET_S2_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_58a53:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPPcmS0_ET_S2_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_58a88:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_58aeb, label %dec_label_pc_58adf

dec_label_pc_58adf:                               ; preds = %dec_label_pc_58a88
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_58aeb

dec_label_pc_58aeb:                               ; preds = %dec_label_pc_58adf, %dec_label_pc_58a88
  %7 = call i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIPcSaIS0_EE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_58b4b, label %dec_label_pc_58b39

dec_label_pc_58b39:                               ; preds = %dec_label_pc_58aeb
  %14 = call i64 @_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_58b4b, label %dec_label_pc_58b5d

dec_label_pc_58b4b:                               ; preds = %dec_label_pc_58b39, %dec_label_pc_58aeb
  %16 = call i64 @_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_58b5d

dec_label_pc_58b5d:                               ; preds = %dec_label_pc_58b39, %dec_label_pc_58b4b
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_58b71, label %dec_label_pc_58b6c

dec_label_pc_58b6c:                               ; preds = %dec_label_pc_58b5d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_58b71

dec_label_pc_58b71:                               ; preds = %dec_label_pc_58b6c, %dec_label_pc_58b5d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_58b78:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_58bad, label %dec_label_pc_58b93

dec_label_pc_58b93:                               ; preds = %dec_label_pc_58b78
  %1 = call i64 @_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_58bad

dec_label_pc_58bad:                               ; preds = %dec_label_pc_58b78, %dec_label_pc_58b93
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPPcS1_SaIS0_EET0_T_S4_S3_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_58baf:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPPcES2_S1_ET0_T_S5_S4_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIPcEE37select_on_container_copy_constructionERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_58c06:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIPcEC2ERKS0_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIPcSaIS0_EE12_Vector_implC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_58c34:
  call void @_ZNSaIPcEC2ERKS0_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIPcSaIS0_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIPcSaIS0_EE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_58c6a:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm(ptr %result, i64 %arg2)
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

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_58cc4:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_58cfa:
  %0 = mul i64 %arg3, 8
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPcEEvT_S4_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_58d2f:
  ret void
}

define i64 @_ZNSt6vectorIPcSaIS0_EE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_58d42:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_58d58:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIPcEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_58d6a:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIPcEE7destroyIS0_EEvRS1_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_58da7:
  call void @_ZN9__gnu_cxx13new_allocatorIPcE7destroyIS1_EEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPPcESt13move_iteratorIT_ES3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_58dd1:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPPcEONSt16remove_referenceIT_E4typeEOS4_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPPcEC2ES1_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_58e26, label %dec_label_pc_58e21

dec_label_pc_58e21:                               ; preds = %dec_label_pc_58dd1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_58e26

dec_label_pc_58e26:                               ; preds = %dec_label_pc_58e21, %dec_label_pc_58dd1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPPcES2_S1_ET0_T_S5_S4_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_58e28:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPPcET_S2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_58e5d:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPPcS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_58e6f:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPPcET_S2_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPPcET_S2_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPPcET_S2_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPPcS1_ET1_T0_S3_S2_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPPcET_RKS2_S2_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPPcS0_EvT_S2_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_58edd:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPPcS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPPcmS0_ET_S2_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_58f0f:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPcmS2_EET_S4_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIPcSaIS0_EE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_58f44:
  %0 = call i64 @_ZNKSt12_Vector_baseIPcSaIS0_EE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIPcSaIS0_EE11_S_max_sizeERKS1_(ptr %1)
  ret i64 %2
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_58f6a:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_58f99:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIPcSt13move_iteratorIPS0_EET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_58fc7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPPcEC2ES1_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_59011, label %dec_label_pc_5900c

dec_label_pc_5900c:                               ; preds = %dec_label_pc_58fc7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_59011

dec_label_pc_59011:                               ; preds = %dec_label_pc_5900c, %dec_label_pc_58fc7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIPcEC2ERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_59014:
  call void @_ZN9__gnu_cxx13new_allocatorIPcEC2ERKS2_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5903e:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIPcE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_59070:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKPcEOT_RNSt16remove_referenceIS3_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorIPcE7destroyIS1_EEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_590b4:
  ret void
}

define ptr @_ZSt4moveIRPPcEONSt16remove_referenceIT_E4typeEOS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_590c7:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPPcEC2ES1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_590da:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPPcEONSt16remove_referenceIT_E4typeEOS4_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_59107:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPcES4_EET0_T_S7_S6_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPPcET_S2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5913c:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPPcS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5914e:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPPcS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPPcET_RKS2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_5917f:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPPcS0_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_59195:
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg1, %arg2
  %1 = icmp eq i1 %0, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %1, label %dec_label_pc_591b6, label %dec_label_pc_591d0

dec_label_pc_591b6:                               ; preds = %dec_label_pc_59195, %dec_label_pc_591b6
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %2 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i64 %arg3, ptr %2, align 8
  %3 = add i64 %stack_var_-32.01.reload, 8
  %4 = icmp eq i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %3, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %5, label %dec_label_pc_591b6, label %dec_label_pc_591d0

dec_label_pc_591d0:                               ; preds = %dec_label_pc_591b6, %dec_label_pc_59195
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPcmS2_EET_S4_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_591d4:
  %0 = call ptr @_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIPcSaIS0_EE11_S_max_sizeERKS1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_59205:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 1152921504606846975, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIPcEE8max_sizeERKS1_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_5926c, label %dec_label_pc_59267

dec_label_pc_59267:                               ; preds = %dec_label_pc_59205
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5926c

dec_label_pc_5926c:                               ; preds = %dec_label_pc_59267, %dec_label_pc_59205
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_5926e:
  ret i64 1152921504606846975
}

define i64 @_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_59286:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_592d8, label %dec_label_pc_592be

dec_label_pc_592be:                               ; preds = %dec_label_pc_59286
  %6 = icmp ult i64 %arg2, 2305843009213693952
  br i1 %6, label %dec_label_pc_592d3, label %dec_label_pc_592ce

dec_label_pc_592ce:                               ; preds = %dec_label_pc_592be
  %7 = call i64 @anon2()
  br label %dec_label_pc_592d3

dec_label_pc_592d3:                               ; preds = %dec_label_pc_592ce, %dec_label_pc_592be
  %8 = call i64 @anon3()
  br label %dec_label_pc_592d8

dec_label_pc_592d8:                               ; preds = %dec_label_pc_592d3, %dec_label_pc_59286
  %9 = mul i64 %arg2, 8
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorIPcEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_592ec:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_592ff:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEET_S9_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEET_S9_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPcES4_EET0_T_S7_S6_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5934e:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPPcS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5937f:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_593b0:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPPcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPPcmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIPcEE8max_sizeERKS1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_593f8:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_59416:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEET_S9_(i64 %arg1) local_unnamed_addr {
dec_label_pc_59445:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_59457:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPPcET_S2_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKPcSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKPcSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKPcPS0_ET1_T0_S5_S4_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPPcET_RKS2_S2_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPPcES2_ET0_T_S5_S4_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_594c5:
  %0 = call i64 @_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPPcS1_ET1_T0_S3_S2_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_59514:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  %.pre = and i64 %2, -8
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_59573, label %dec_label_pc_59543

dec_label_pc_59543:                               ; preds = %dec_label_pc_59514
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_59573

dec_label_pc_59573:                               ; preds = %dec_label_pc_59514, %dec_label_pc_59543
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPPcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_5958a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPPcmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_59598:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_595bd, label %dec_label_pc_595f7

dec_label_pc_595bd:                               ; preds = %dec_label_pc_59598
  %2 = mul i64 %arg2, 8
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPPcS0_EvT_S2_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_595f7

dec_label_pc_595f7:                               ; preds = %dec_label_pc_59598, %dec_label_pc_595bd
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIPcE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_595fa:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKPcSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_59618:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKPcPS0_ET1_T0_S5_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_59639:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKPcPS0_ET1_T0_S5_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_5966a:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPPcE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPPcET_S2_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPPcS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_59690:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPPcET_S2_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPPcET_S2_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPPcET_S2_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPPcS1_ET1_T0_S3_S2_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPPcET_RKS2_S2_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKPcPS0_ET1_T0_S5_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_596fe:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPPcE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_59730:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPPcS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_59745:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPPcS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_59776:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_597c4, label %dec_label_pc_597a5

dec_label_pc_597a5:                               ; preds = %dec_label_pc_59776
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_597c4

dec_label_pc_597c4:                               ; preds = %dec_label_pc_597a5, %dec_label_pc_59776
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPPcS1_ET1_T0_S3_S2_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_597d9:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_5980a:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_59858, label %dec_label_pc_59839

dec_label_pc_59839:                               ; preds = %dec_label_pc_5980a
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_59858

dec_label_pc_59858:                               ; preds = %dec_label_pc_59839, %dec_label_pc_5980a
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @_ZNSt6vectorIPcSaIS0_EEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_599e0:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 8
  %2 = add i64 %1, %0
  ret i64 %2
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_63c12:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-112 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-120 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-120 to i64
  %1 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIPcSaIS0_EEC2Ev(ptr nonnull %stack_var_-88)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_63c68

dec_label_pc_63c68:                               ; preds = %dec_label_pc_63c68, %dec_label_pc_63c12
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_63c7f, label %dec_label_pc_63c68

dec_label_pc_63c7f:                               ; preds = %dec_label_pc_63c68
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_63cea

dec_label_pc_63cea:                               ; preds = %dec_label_pc_63cea, %dec_label_pc_63c7f
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_63d01, label %dec_label_pc_63cea

dec_label_pc_63d01:                               ; preds = %dec_label_pc_63cea
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %stack_var_-120 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  %11 = call i64 @_ZNSt6vectorIPcSaIS0_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %11, ptr %stack_var_-112, align 8
  %12 = ptrtoint ptr %stack_var_-112 to i64
  %13 = ptrtoint ptr %stack_var_-56 to i64
  %14 = trunc i64 %13 to i32
  %15 = trunc i64 %12 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE(i32 %14, i32 %15)
  %16 = load i64, ptr %stack_var_-56, align 8
  %17 = call i64 @_ZNSt6vectorIPcSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_(ptr nonnull %stack_var_-88, i64 %16, i64 1, ptr nonnull %stack_var_-120)
  %18 = call i64 @_ZNSt6vectorIPcSaIS0_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %18, ptr %stack_var_-112, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE(i32 %14, i32 %15)
  %19 = load i64, ptr %stack_var_-56, align 8
  %20 = call i64 @_ZNSt6vectorIPcSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_(ptr nonnull %stack_var_-88, i64 %19, i64 1, ptr nonnull %stack_var_-120)
  %21 = call i64 @_ZNSt6vectorIPcSaIS0_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %21, ptr %stack_var_-112, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPcSt6vectorIS1_SaIS1_EEEC2IPS1_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISA_S9_E7__valueES6_E6__typeEEE(i32 %14, i32 %15)
  %22 = load i64, ptr %stack_var_-56, align 8
  %23 = call i64 @_ZNSt6vectorIPcSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_(ptr nonnull %stack_var_-88, i64 %22, i64 1, ptr nonnull %stack_var_-120)
  call void @_ZNSt6vectorIPcSaIS0_EEC2ERKS2_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %24 = call i64 @anon1(i64 %13)
  call void @_ZNSt6vectorIPcSaIS0_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIPcSaIS0_EED2Ev(ptr nonnull %stack_var_-88)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_63e8a, label %dec_label_pc_63e85

dec_label_pc_63e85:                               ; preds = %dec_label_pc_63d01
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_63e8a

dec_label_pc_63e8a:                               ; preds = %dec_label_pc_63e85, %dec_label_pc_63d01
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_6411e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = inttoptr i64 %arg1 to ptr
  %2 = call i64 @_ZNSt6vectorIPcSaIS0_EEixEm(ptr %1, i64 2)
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = inttoptr i64 %4 to ptr
  %7 = bitcast ptr %stack_var_-120 to ptr
  %8 = call ptr @strncpy(ptr %6, ptr nonnull %7, i32 99)
  %9 = add i64 %4, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  call void @printLine(ptr %6)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_641bc, label %dec_label_pc_641b7

dec_label_pc_641b7:                               ; preds = %dec_label_pc_6411e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_641bc

dec_label_pc_641bc:                               ; preds = %dec_label_pc_641b7, %dec_label_pc_6411e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare i64 @anon3() local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare i64 @_ZSt20__throw_length_errorPKc(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

