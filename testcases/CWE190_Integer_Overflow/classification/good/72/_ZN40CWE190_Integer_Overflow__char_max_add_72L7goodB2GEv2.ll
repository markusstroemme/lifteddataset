@global_var_72994 = external constant [23 x i8]
@global_var_73d00 = external constant [54 x i8]
@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3ccfd:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_3cd13:
  ret i64 %arg1
}

define void @_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cd26:
  %0 = call i64 @_ZNSaIcED2Ev()
  ret void
}

define void @_ZNSt12_Vector_baseIcSaIcEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cd46:
  call void @_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIcSaIcEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cd66:
  call void @_ZNSt12_Vector_baseIcSaIcEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cd86:
  %0 = call i64 @_ZNSaIcEC2Ev()
  call void @_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIcSaIcEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3cdb2:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = bitcast ptr %result to ptr
  %6 = call i64 @_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm(ptr %result, ptr %5, i64 %4)
  call void @_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIcSaIcEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3ce00:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPccEvT_S1_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIcSaIcEED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIcSaIcEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_3ce48:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3ce96, label %dec_label_pc_3ce91

dec_label_pc_3ce91:                               ; preds = %dec_label_pc_3ce48
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3ce96

dec_label_pc_3ce96:                               ; preds = %dec_label_pc_3ce91, %dec_label_pc_3ce48
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2IPcEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_3ce98:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIcSaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS1_EEmRS4_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_3cec6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIcSaIcEE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKcSt6vectorIcSaIcEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIcSaIcEE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIcSaIcEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPcS1_EEmRKc(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIcSaIcEE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_3cf89, label %dec_label_pc_3cf84

dec_label_pc_3cf84:                               ; preds = %dec_label_pc_3cec6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3cf89

dec_label_pc_3cf89:                               ; preds = %dec_label_pc_3cf84, %dec_label_pc_3cec6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIcSaIcEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3cf8c:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIcSaIcEE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSaIcED1Ev()
  %7 = call i64 @_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIcSaIcEE3endEv(ptr %arg2)
  %9 = call i64 @_ZNKSt6vectorIcSaIcEE5beginEv(ptr %arg2)
  %10 = bitcast ptr %result to ptr
  %11 = inttoptr i64 %7 to ptr
  %12 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E(i64 %9, i64 %8, ptr %10, ptr %11)
  %13 = ptrtoint ptr %12 to i64
  %14 = add i64 %0, 8
  %15 = inttoptr i64 %14 to ptr
  store i64 %13, ptr %15, align 8
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_3d0a0, label %dec_label_pc_3d09b

dec_label_pc_3d09b:                               ; preds = %dec_label_pc_3cf8c
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d0a0

dec_label_pc_3d0a0:                               ; preds = %dec_label_pc_3d09b, %dec_label_pc_3cf8c
  ret void
}

define void @_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3d0ac:
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

define i64 @_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3d0de:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_3d114, label %dec_label_pc_3d0fd

dec_label_pc_3d0fd:                               ; preds = %dec_label_pc_3d0de
  %1 = call i64 @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d114

dec_label_pc_3d114:                               ; preds = %dec_label_pc_3d0fd, %dec_label_pc_3d0de
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d118:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPccEvT_S1_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3d12a:
  call void @_ZSt8_DestroyIPcEvT_S1_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d158:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d17a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIcSaIcEE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d18c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_3d1d6, label %dec_label_pc_3d1d1

dec_label_pc_3d1d1:                               ; preds = %dec_label_pc_3d18c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d1d6

dec_label_pc_3d1d6:                               ; preds = %dec_label_pc_3d1d1, %dec_label_pc_3d18c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKcSt6vectorIcSaIcEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d1d8:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  ret i64 %6
}

define i64 @_ZNSt6vectorIcSaIcEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPcS1_EEmRKc(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_3d218:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_3d6d9, label %dec_label_pc_3d25a

dec_label_pc_3d25a:                               ; preds = %dec_label_pc_3d218
  %2 = ptrtoint ptr %result to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %2, 8
  %7 = inttoptr i64 %6 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = sub i64 %5, %8
  %10 = icmp ult i64 %9, %arg3
  br i1 %10, label %dec_label_pc_3d46f, label %dec_label_pc_3d27d

dec_label_pc_3d27d:                               ; preds = %dec_label_pc_3d25a
  call void @_ZNSt6vectorIcSaIcEE16_Temporary_valueC2IJRKcEEEPS1_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %11 = call i64 @_ZNSt6vectorIcSaIcEE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %12 = inttoptr i64 %11 to ptr
  %13 = call i64 @_ZNSt6vectorIcSaIcEE3endEv(ptr %result)
  store i64 %13, ptr %stack_var_-120, align 8
  %14 = call i64 @_ZN9__gnu_cxxmiIPcSt6vectorIcSaIcEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %15 = load i64, ptr %7, align 8
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt i64 %14, %arg3
  %18 = call i64 @_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %17, label %dec_label_pc_3d2eb, label %dec_label_pc_3d3b4

dec_label_pc_3d2eb:                               ; preds = %dec_label_pc_3d27d
  %19 = load i64, ptr %7, align 8
  %20 = sub i64 %19, %arg3
  %21 = inttoptr i64 %20 to ptr
  %22 = inttoptr i64 %19 to ptr
  %23 = inttoptr i64 %18 to ptr
  %24 = call ptr @_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_(ptr %21, ptr %22, ptr %22, ptr %23)
  %25 = load i64, ptr %7, align 8
  %26 = add i64 %25, %arg3
  store i64 %26, ptr %7, align 8
  %27 = sub i64 %15, %arg3
  %28 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr nonnull %stack_var_-136)
  %29 = inttoptr i64 %28 to ptr
  %30 = load i64, ptr %29, align 8
  %31 = inttoptr i64 %30 to ptr
  %32 = inttoptr i64 %27 to ptr
  %33 = call ptr @_ZSt13move_backwardIPcS0_ET0_T_S2_S1_(ptr %31, ptr %32, ptr %16)
  %34 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr nonnull %stack_var_-136)
  %35 = inttoptr i64 %34 to ptr
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, %arg3
  %38 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr nonnull %stack_var_-136)
  %39 = inttoptr i64 %38 to ptr
  %40 = load i64, ptr %39, align 8
  %41 = inttoptr i64 %40 to ptr
  %42 = inttoptr i64 %37 to ptr
  call void @_ZSt4fillIPccEvT_S1_RKT0_(ptr %41, ptr %42, ptr %12)
  br label %dec_label_pc_3d45e

dec_label_pc_3d3b4:                               ; preds = %dec_label_pc_3d27d
  %43 = sub i64 %arg3, %14
  %44 = load i64, ptr %7, align 8
  %45 = inttoptr i64 %44 to ptr
  %46 = inttoptr i64 %18 to ptr
  %47 = call ptr @_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E(ptr %45, i64 %43, ptr %12, ptr %46)
  %48 = ptrtoint ptr %47 to i64
  store i64 %48, ptr %7, align 8
  %49 = call i64 @_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result)
  %50 = load i64, ptr %7, align 8
  %51 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr nonnull %stack_var_-136)
  %52 = inttoptr i64 %51 to ptr
  %53 = load i64, ptr %52, align 8
  %54 = inttoptr i64 %53 to ptr
  %55 = inttoptr i64 %50 to ptr
  %56 = inttoptr i64 %49 to ptr
  %57 = call ptr @_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_(ptr %54, ptr %16, ptr %55, ptr %56)
  %58 = load i64, ptr %7, align 8
  %59 = add i64 %58, %14
  store i64 %59, ptr %7, align 8
  %60 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr nonnull %stack_var_-136)
  %61 = inttoptr i64 %60 to ptr
  %62 = load i64, ptr %61, align 8
  %63 = inttoptr i64 %62 to ptr
  call void @_ZSt4fillIPccEvT_S1_RKT0_(ptr %63, ptr %16, ptr %12)
  br label %dec_label_pc_3d45e

dec_label_pc_3d45e:                               ; preds = %dec_label_pc_3d3b4, %dec_label_pc_3d2eb
  call void @_ZNSt6vectorIcSaIcEE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_3d6d9

dec_label_pc_3d46f:                               ; preds = %dec_label_pc_3d25a
  %64 = call i64 @_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_72994)
  %65 = call i64 @_ZNSt6vectorIcSaIcEE5beginEv(ptr %result)
  store i64 %65, ptr %stack_var_-120, align 8
  %66 = call i64 @_ZN9__gnu_cxxmiIPcSt6vectorIcSaIcEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %67 = call i64 @_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm(ptr %result, i64 %64)
  %68 = call i64 @_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result)
  %69 = add i64 %67, %66
  %70 = inttoptr i64 %69 to ptr
  %71 = inttoptr i64 %68 to ptr
  %72 = call ptr @_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E(ptr %70, i64 %arg3, ptr %arg4, ptr %71)
  %73 = call i64 @_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result)
  %74 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr nonnull %stack_var_-136)
  %75 = inttoptr i64 %74 to ptr
  %76 = load i64, ptr %75, align 8
  %77 = bitcast ptr %stack_var_-136 to ptr
  %78 = inttoptr i64 %76 to ptr
  %79 = inttoptr i64 %67 to ptr
  %80 = inttoptr i64 %73 to ptr
  %81 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_(ptr nonnull %77, ptr %78, ptr %79, ptr %80)
  %82 = ptrtoint ptr %81 to i64
  %83 = add i64 %82, %arg3
  %84 = call i64 @_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result)
  %85 = load i64, ptr %7, align 8
  %86 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr nonnull %stack_var_-136)
  %87 = inttoptr i64 %86 to ptr
  %88 = load i64, ptr %87, align 8
  %89 = inttoptr i64 %88 to ptr
  %90 = inttoptr i64 %85 to ptr
  %91 = inttoptr i64 %83 to ptr
  %92 = inttoptr i64 %84 to ptr
  %93 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_(ptr %89, ptr %90, ptr %91, ptr %92)
  %94 = ptrtoint ptr %93 to i64
  %95 = call i64 @_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result)
  %96 = load i64, ptr %7, align 8
  %97 = bitcast ptr %result to ptr
  %98 = inttoptr i64 %96 to ptr
  %99 = inttoptr i64 %95 to ptr
  call void @_ZSt8_DestroyIPccEvT_S1_RSaIT0_E(ptr %97, ptr %98, ptr %99)
  %100 = load i64, ptr %4, align 8
  %101 = sub i64 %100, %2
  %102 = call i64 @_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm(ptr %result, ptr %97, i64 %101)
  store i64 %67, ptr %result, align 8
  store i64 %94, ptr %7, align 8
  %103 = add i64 %67, %64
  store i64 %103, ptr %4, align 8
  br label %dec_label_pc_3d6d9

dec_label_pc_3d6d9:                               ; preds = %dec_label_pc_3d46f, %dec_label_pc_3d45e, %dec_label_pc_3d218
  %104 = call i64 @__readfsqword(i64 40)
  %105 = icmp eq i64 %0, %104
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %105, label %dec_label_pc_3d6ee, label %dec_label_pc_3d6e9

dec_label_pc_3d6e9:                               ; preds = %dec_label_pc_3d6d9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d6ee

dec_label_pc_3d6ee:                               ; preds = %dec_label_pc_3d6e9, %dec_label_pc_3d6d9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIcSaIcEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d6f8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_3d742, label %dec_label_pc_3d73d

dec_label_pc_3d73d:                               ; preds = %dec_label_pc_3d6f8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d742

dec_label_pc_3d742:                               ; preds = %dec_label_pc_3d73d, %dec_label_pc_3d6f8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_3d744:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = sext i32 %arg2 to i64
  %3 = add i64 %2, %0
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = bitcast ptr %stack_var_-32 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr nonnull %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %1, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3d7a4, label %dec_label_pc_3d79f

dec_label_pc_3d79f:                               ; preds = %dec_label_pc_3d744
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d7a4

dec_label_pc_3d7a4:                               ; preds = %dec_label_pc_3d79f, %dec_label_pc_3d744
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIcSaIcEE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d7a6:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  ret i64 %4
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d7c9:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_3d813, label %dec_label_pc_3d80e

dec_label_pc_3d80e:                               ; preds = %dec_label_pc_3d7c9
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d813

dec_label_pc_3d813:                               ; preds = %dec_label_pc_3d80e, %dec_label_pc_3d7c9
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d81a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3d82c:
  call void @_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIcSaIcEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d892:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_3d8dc, label %dec_label_pc_3d8d7

dec_label_pc_3d8d7:                               ; preds = %dec_label_pc_3d892
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d8dc

dec_label_pc_3d8dc:                               ; preds = %dec_label_pc_3d8d7, %dec_label_pc_3d892
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIcSaIcEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d8de:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3d92c, label %dec_label_pc_3d927

dec_label_pc_3d927:                               ; preds = %dec_label_pc_3d8de
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3d92c

dec_label_pc_3d92c:                               ; preds = %dec_label_pc_3d927, %dec_label_pc_3d8de
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_3d92e:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3d963:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPcEvT_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d995:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3d9c0:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_3d9e2:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIcSaIcEE16_Temporary_valueC2IJRKcEEEPS1_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_3d9f4:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIcSaIcEE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIcSaIcEE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3da52:
  %0 = call i64 @_ZNSt6vectorIcSaIcEE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIcSaIcEE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_3da86:
  %0 = call i64 @_ZNSt6vectorIcSaIcEE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPcSt6vectorIcSaIcEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3daa4:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  ret i64 %6
}

define ptr @_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_3dae3:
  %0 = call i64 @_ZSt18make_move_iteratorIPcESt13move_iteratorIT_ES2_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPcESt13move_iteratorIT_ES2_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPcES1_cET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPcS0_ET0_T_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3db3a:
  %0 = call ptr @_ZSt12__miter_baseIPcET_S1_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPcET_S1_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPcS0_ET1_T0_S2_S1_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPccEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3db89:
  call void @_ZSt8__fill_aIPccEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_3dbbb:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPcmcET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3dbf0:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIcSaIcEE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIcSaIcEE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_3dc53, label %dec_label_pc_3dc47

dec_label_pc_3dc47:                               ; preds = %dec_label_pc_3dbf0
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_3dc53

dec_label_pc_3dc53:                               ; preds = %dec_label_pc_3dc47, %dec_label_pc_3dbf0
  %7 = call i64 @_ZNKSt6vectorIcSaIcEE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIcSaIcEE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIcSaIcEE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_3dcb3, label %dec_label_pc_3dca1

dec_label_pc_3dca1:                               ; preds = %dec_label_pc_3dc53
  %14 = call i64 @_ZNKSt6vectorIcSaIcEE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_3dcb3, label %dec_label_pc_3dcc5

dec_label_pc_3dcb3:                               ; preds = %dec_label_pc_3dca1, %dec_label_pc_3dc53
  %16 = call i64 @_ZNKSt6vectorIcSaIcEE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_3dcc5

dec_label_pc_3dcc5:                               ; preds = %dec_label_pc_3dca1, %dec_label_pc_3dcb3
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_3dcd9, label %dec_label_pc_3dcd4

dec_label_pc_3dcd4:                               ; preds = %dec_label_pc_3dcc5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3dcd9

dec_label_pc_3dcd9:                               ; preds = %dec_label_pc_3dcd4, %dec_label_pc_3dcc5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3dce0:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_3dd15, label %dec_label_pc_3dcfb

dec_label_pc_3dcfb:                               ; preds = %dec_label_pc_3dce0
  %1 = call i64 @_ZNSt16allocator_traitsISaIcEE8allocateERS0_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_3dd15

dec_label_pc_3dd15:                               ; preds = %dec_label_pc_3dce0, %dec_label_pc_3dcfb
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_3dd17:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIcSt13move_iteratorIPcEET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIcSt13move_iteratorIPcEET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPcES1_cET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3dd6e:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSaIcEC1ERKS_(ptr %result)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3dd9c:
  %0 = call i64 @_ZNSaIcEC2ERKS_(ptr %result)
  call void @_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3ddd2:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm(ptr %result, i64 %arg2)
  store i64 %1, ptr %result, align 8
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  store i64 %0, ptr %3, align 8
  %4 = add i64 %0, %arg2
  %5 = add i64 %0, 16
  %6 = inttoptr i64 %5 to ptr
  store i64 %4, ptr %6, align 8
  ret i64 %0
}

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3de28:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3de5e:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call i64 @_ZdlPvm(ptr %0, i64 %arg3)
  ret i64 %1
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3de8b:
  ret void
}

define i64 @_ZNSt6vectorIcSaIcEE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_3de9e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_3deb4:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3dec6:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3df03:
  call void @_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPcESt13move_iteratorIT_ES2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3df2d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPcEC2ES0_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3df82, label %dec_label_pc_3df7d

dec_label_pc_3df7d:                               ; preds = %dec_label_pc_3df2d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3df82

dec_label_pc_3df82:                               ; preds = %dec_label_pc_3df7d, %dec_label_pc_3df2d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPcES1_cET0_T_S4_S3_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_3df84:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPcES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPcET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3dfb9:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPcS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3dfcb:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPcET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPcET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPcET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPccEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e039:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPcmcET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e06b:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPcmcEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIcSaIcEE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3e0a0:
  %0 = call i64 @_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_(ptr %1)
  ret i64 %2
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3e0c6:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @_ZNSt16allocator_traitsISaIcEE8allocateERS0_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_3e0f5:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIcSt13move_iteratorIPcEET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3e123:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPcEC2ES0_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3e16d, label %dec_label_pc_3e168

dec_label_pc_3e168:                               ; preds = %dec_label_pc_3e123
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3e16d

dec_label_pc_3e16d:                               ; preds = %dec_label_pc_3e168, %dec_label_pc_3e123
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e16f:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3e1a0:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = bitcast ptr %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 1, ptr %4)
  store i8 %3, ptr %5, align 1
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3e1e2:
  ret void
}

define ptr @_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3e1f5:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPcEC2ES0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3e208:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPcEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPcES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e235:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPcES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPcET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3e26a:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e27c:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPcS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3e2ad:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_3e2c3:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = sub i64 %arg2, %arg1
  %3 = icmp eq i64 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3e311, label %dec_label_pc_3e2f8

dec_label_pc_3e2f8:                               ; preds = %dec_label_pc_3e2c3
  %4 = trunc i64 %1 to i32
  %5 = trunc i64 %2 to i32
  %6 = urem i32 %4, 256
  %7 = inttoptr i64 %arg1 to ptr
  %8 = call ptr @memset(ptr %7, i32 %6, i32 %5)
  %9 = ptrtoint ptr %8 to i64
  store i64 %9, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3e311

dec_label_pc_3e311:                               ; preds = %dec_label_pc_3e2f8, %dec_label_pc_3e2c3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPcmcEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e314:
  %0 = call ptr @_ZSt6fill_nIPcmcET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3e345:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 9223372036854775807, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3e3ac, label %dec_label_pc_3e3a7

dec_label_pc_3e3a7:                               ; preds = %dec_label_pc_3e345
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3e3ac

dec_label_pc_3e3ac:                               ; preds = %dec_label_pc_3e3a7, %dec_label_pc_3e345
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3e3ae:
  ret i64 9223372036854775807
}

define i64 @_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e3c6:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_3e403, label %dec_label_pc_3e3fe

dec_label_pc_3e3fe:                               ; preds = %dec_label_pc_3e3c6
  %6 = call i64 @anon2()
  br label %dec_label_pc_3e403

dec_label_pc_3e403:                               ; preds = %dec_label_pc_3e3fe, %dec_label_pc_3e3c6
  %7 = call i64 @_Znwm(i64 %arg2)
  ret i64 %7
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e412:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPcES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e461:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPcES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPcS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e492:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIcEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPcmcET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e4c3:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3e50b:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3e529:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_(i64 %arg1) local_unnamed_addr {
dec_label_pc_3e558:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e56a:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPcET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPcES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e5d8:
  %0 = call i64 @_ZSt12__miter_baseIPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPcS0_ET1_T0_S2_S1_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIcEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e627:
  %.pre-phi9.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %dec_label_pc_3e627.dec_label_pc_3e676_crit_edge, label %dec_label_pc_3e652

dec_label_pc_3e627.dec_label_pc_3e676_crit_edge:  ; preds = %dec_label_pc_3e627
  %.pre6 = ptrtoint ptr %arg3 to i64
  store i64 %.pre6, ptr %.pre-phi9.reg2mem, align 8
  br label %dec_label_pc_3e676

dec_label_pc_3e652:                               ; preds = %dec_label_pc_3e627
  %4 = trunc i64 %2 to i32
  %sext = mul i64 %2, 4294967296
  %5 = ashr exact i64 %sext, 32
  %6 = ptrtoint ptr %arg3 to i64
  %7 = sub i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = bitcast ptr %arg1 to ptr
  %10 = call ptr @memmove(ptr %8, ptr %9, i32 %4)
  store i64 %7, ptr %.pre-phi9.reg2mem, align 8
  br label %dec_label_pc_3e676

dec_label_pc_3e676:                               ; preds = %dec_label_pc_3e627.dec_label_pc_3e676_crit_edge, %dec_label_pc_3e652
  %.pre-phi9.reload = load i64, ptr %.pre-phi9.reg2mem, align 8
  %11 = inttoptr i64 %.pre-phi9.reload to ptr
  ret ptr %11
}

define i64 @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_3e689:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_3e697:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_3e6bc, label %dec_label_pc_3e6e6

dec_label_pc_3e6bc:                               ; preds = %dec_label_pc_3e697
  %2 = ptrtoint ptr %arg1 to i64
  %3 = add i64 %2, %arg2
  %4 = inttoptr i64 %3 to ptr
  call void @_ZSt8__fill_aIPccEvT_S1_RKT0_(ptr %arg1, ptr %4, ptr %arg3)
  store ptr %4, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_3e6e6

dec_label_pc_3e6e6:                               ; preds = %dec_label_pc_3e697, %dec_label_pc_3e6bc
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_3e6e8:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_3e706:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e727:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_3e758:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPcE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPcET_S1_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPcS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e77e:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPcET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPcET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPcET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e7ec:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPcE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_3e81e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e833:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPcS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e864:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %dec_label_pc_3e8a6, label %dec_label_pc_3e88f

dec_label_pc_3e88f:                               ; preds = %dec_label_pc_3e864
  %4 = trunc i64 %2 to i32
  %5 = bitcast ptr %arg3 to ptr
  %6 = bitcast ptr %arg1 to ptr
  %7 = call ptr @memmove(ptr %5, ptr %6, i32 %4)
  br label %dec_label_pc_3e8a6

dec_label_pc_3e8a6:                               ; preds = %dec_label_pc_3e88f, %dec_label_pc_3e864
  %sext = mul i64 %2, 4294967296
  %8 = ashr exact i64 %sext, 32
  %9 = ptrtoint ptr %arg3 to i64
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  ret ptr %11
}

define ptr @_ZSt14__copy_move_a2ILb1EPcS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e8b3:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_3e8e4:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %dec_label_pc_3e926, label %dec_label_pc_3e90f

dec_label_pc_3e90f:                               ; preds = %dec_label_pc_3e8e4
  %4 = trunc i64 %2 to i32
  %5 = bitcast ptr %arg3 to ptr
  %6 = bitcast ptr %arg1 to ptr
  %7 = call ptr @memmove(ptr %5, ptr %6, i32 %4)
  br label %dec_label_pc_3e926

dec_label_pc_3e926:                               ; preds = %dec_label_pc_3e90f, %dec_label_pc_3e8e4
  %sext = mul i64 %2, 4294967296
  %8 = ashr exact i64 %sext, 32
  %9 = ptrtoint ptr %arg3 to i64
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  ret ptr %11
}

define i64 @_ZNSt6vectorIcSaIcEEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_3ea08:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, %arg2
  ret i64 %1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_46f61:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-97 = alloca i8, align 1
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIcSaIcEEC2Ev(ptr nonnull %stack_var_-88)
  store i8 127, ptr %stack_var_-97, align 1
  %1 = call i64 @_ZNSt6vectorIcSaIcEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %1, ptr %stack_var_-96, align 8
  %2 = ptrtoint ptr %stack_var_-96 to i64
  %3 = ptrtoint ptr %stack_var_-56 to i64
  %4 = trunc i64 %3 to i32
  %5 = trunc i64 %2 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2IPcEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %4, i32 %5)
  %6 = load i64, ptr %stack_var_-56, align 8
  %7 = call i64 @_ZNSt6vectorIcSaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %6, i64 1, ptr nonnull %stack_var_-97)
  %8 = call i64 @_ZNSt6vectorIcSaIcEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %8, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2IPcEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %4, i32 %5)
  %9 = load i64, ptr %stack_var_-56, align 8
  %10 = call i64 @_ZNSt6vectorIcSaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %9, i64 1, ptr nonnull %stack_var_-97)
  %11 = call i64 @_ZNSt6vectorIcSaIcEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %11, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2IPcEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %4, i32 %5)
  %12 = load i64, ptr %stack_var_-56, align 8
  %13 = call i64 @_ZNSt6vectorIcSaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %12, i64 1, ptr nonnull %stack_var_-97)
  call void @_ZNSt6vectorIcSaIcEEC2ERKS1_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %14 = call i64 @anon1(i64 %3)
  call void @_ZNSt6vectorIcSaIcEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIcSaIcEED2Ev(ptr nonnull %stack_var_-88)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_470ce, label %dec_label_pc_470c9

dec_label_pc_470c9:                               ; preds = %dec_label_pc_46f61
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_470ce

dec_label_pc_470ce:                               ; preds = %dec_label_pc_470c9, %dec_label_pc_46f61
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_47167:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt6vectorIcSaIcEEixEm(ptr %0, i64 2)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 127
  br i1 %4, label %dec_label_pc_471ab, label %dec_label_pc_47194

dec_label_pc_47194:                               ; preds = %dec_label_pc_47167
  %5 = zext i8 %3 to i32
  %6 = mul i32 %5, 16777216
  %sext = add i32 %6, 16777216
  %7 = udiv i32 %sext, 16777216
  %8 = trunc i32 %7 to i8
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_471ba

dec_label_pc_471ab:                               ; preds = %dec_label_pc_47167
  call void @printLine(ptr @global_var_73d00)
  br label %dec_label_pc_471ba

dec_label_pc_471ba:                               ; preds = %dec_label_pc_471ab, %dec_label_pc_47194
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZNSaIcED2Ev() local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_ZSt20__throw_length_errorPKc(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_ZNSaIcEC1ERKS_(ptr) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i64 @_ZNSaIcED1Ev() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @_ZNSaIcEC2ERKS_(ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @_ZNSaIcEC2Ev() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

