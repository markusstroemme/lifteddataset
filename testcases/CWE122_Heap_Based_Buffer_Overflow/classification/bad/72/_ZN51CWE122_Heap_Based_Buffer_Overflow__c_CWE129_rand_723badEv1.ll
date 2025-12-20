@global_var_b9af0 = external constant [23 x i8]
@global_var_bc328 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_6fdbf:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_6fdd5:
  ret i64 %arg1
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_71248:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_716f4:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e42c:
  call void @_ZNSaIiED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e44c:
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e46c:
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e48c:
  call void @_ZNSaIiEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIiED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e4b8:
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e4d8:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 2
  %6 = bitcast ptr %result to ptr
  %7 = call i64 @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr %result, ptr %6, i64 %5)
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e52a:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e572:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_7e5c0, label %dec_label_pc_7e5bb

dec_label_pc_7e5bb:                               ; preds = %dec_label_pc_7e572
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7e5c0

dec_label_pc_7e5c0:                               ; preds = %dec_label_pc_7e5bb, %dec_label_pc_7e572
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPiEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_7e5c2:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7e5f0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIiSaIiEE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIiSaIiEE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIiSaIiEE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_7e6b3, label %dec_label_pc_7e6ae

dec_label_pc_7e6ae:                               ; preds = %dec_label_pc_7e5f0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7e6b3

dec_label_pc_7e6b3:                               ; preds = %dec_label_pc_7e6ae, %dec_label_pc_7e5f0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7e6b6:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  call void @_ZNSaIiED2Ev(ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %7 = call i64 @_ZNKSt6vectorIiSaIiEE3endEv(ptr %arg2)
  %8 = call i64 @_ZNKSt6vectorIiSaIiEE5beginEv(ptr %arg2)
  %9 = bitcast ptr %result to ptr
  %10 = inttoptr i64 %6 to ptr
  %11 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i64 %8, i64 %7, ptr %9, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %0, 8
  %14 = inttoptr i64 %13 to ptr
  store i64 %12, ptr %14, align 8
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_7e7ca, label %dec_label_pc_7e7c5

dec_label_pc_7e7c5:                               ; preds = %dec_label_pc_7e6b6
  call void @__stack_chk_fail()
  br label %dec_label_pc_7e7ca

dec_label_pc_7e7ca:                               ; preds = %dec_label_pc_7e7c5, %dec_label_pc_7e6b6
  ret void
}

define void @_ZNSaIiEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e7d6:
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e7f6:
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

define void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7e828:
  ret void
}

define i64 @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7e838:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_7e86e, label %dec_label_pc_7e857

dec_label_pc_7e857:                               ; preds = %dec_label_pc_7e838
  %1 = call i64 @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7e86e

dec_label_pc_7e86e:                               ; preds = %dec_label_pc_7e857, %dec_label_pc_7e838
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e872:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7e884:
  call void @_ZSt8_DestroyIPiEvT_S1_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7e8b2:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e8d4:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIiSaIiEE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e8e6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_7e930, label %dec_label_pc_7e92b

dec_label_pc_7e92b:                               ; preds = %dec_label_pc_7e8e6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7e930

dec_label_pc_7e930:                               ; preds = %dec_label_pc_7e92b, %dec_label_pc_7e8e6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7e932:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 2
  ret i64 %7
}

define i64 @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7e976:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_7ee77, label %dec_label_pc_7e9b8

dec_label_pc_7e9b8:                               ; preds = %dec_label_pc_7e976
  %2 = ptrtoint ptr %result to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %2, 8
  %7 = inttoptr i64 %6 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = sub i64 %5, %8
  %10 = ashr i64 %9, 2
  %11 = icmp ult i64 %10, %arg3
  br i1 %11, label %dec_label_pc_7ebe5, label %dec_label_pc_7e9df

dec_label_pc_7e9df:                               ; preds = %dec_label_pc_7e9b8
  call void @_ZNSt6vectorIiSaIiEE16_Temporary_valueC2IJRKiEEEPS1_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %12 = call i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %13 = inttoptr i64 %12 to ptr
  %14 = call i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr %result)
  store i64 %14, ptr %stack_var_-120, align 8
  %15 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %16 = load i64, ptr %7, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt i64 %15, %arg3
  %19 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %18, label %dec_label_pc_7ea4d, label %dec_label_pc_7eb26

dec_label_pc_7ea4d:                               ; preds = %dec_label_pc_7e9df
  %20 = load i64, ptr %7, align 8
  %21 = mul i64 %arg3, 4
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = inttoptr i64 %20 to ptr
  %25 = inttoptr i64 %19 to ptr
  %26 = call ptr @_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %23, ptr %24, ptr %24, ptr %25)
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %27, %21
  store i64 %28, ptr %7, align 8
  %29 = sub i64 %16, %21
  %30 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = inttoptr i64 %29 to ptr
  %35 = call ptr @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(ptr %33, ptr %34, ptr %17)
  %36 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %21
  %40 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %41 = inttoptr i64 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %39 to ptr
  call void @_ZSt4fillIPiiEvT_S1_RKT0_(ptr %43, ptr %44, ptr %13)
  br label %dec_label_pc_7ebd4

dec_label_pc_7eb26:                               ; preds = %dec_label_pc_7e9df
  %45 = sub i64 %arg3, %15
  %46 = load i64, ptr %7, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = inttoptr i64 %19 to ptr
  %49 = call ptr @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(ptr %47, i64 %45, ptr %13, ptr %48)
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %54 = inttoptr i64 %53 to ptr
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = inttoptr i64 %52 to ptr
  %58 = inttoptr i64 %51 to ptr
  %59 = call ptr @_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %56, ptr %17, ptr %57, ptr %58)
  %60 = load i64, ptr %7, align 8
  %61 = mul i64 %15, 4
  %62 = add i64 %60, %61
  store i64 %62, ptr %7, align 8
  %63 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  call void @_ZSt4fillIPiiEvT_S1_RKT0_(ptr %66, ptr %17, ptr %13)
  br label %dec_label_pc_7ebd4

dec_label_pc_7ebd4:                               ; preds = %dec_label_pc_7eb26, %dec_label_pc_7ea4d
  call void @_ZNSt6vectorIiSaIiEE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_7ee77

dec_label_pc_7ebe5:                               ; preds = %dec_label_pc_7e9b8
  %67 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_b9af0)
  %68 = call i64 @_ZNSt6vectorIiSaIiEE5beginEv(ptr %result)
  store i64 %68, ptr %stack_var_-120, align 8
  %69 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %70 = call i64 @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr %result, i64 %67)
  %71 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %72 = mul i64 %69, 4
  %73 = add i64 %72, %70
  %74 = inttoptr i64 %73 to ptr
  %75 = inttoptr i64 %71 to ptr
  %76 = call ptr @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(ptr %74, i64 %arg3, ptr %arg4, ptr %75)
  %77 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %78 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %79 = inttoptr i64 %78 to ptr
  %80 = load i64, ptr %79, align 8
  %81 = bitcast ptr %stack_var_-136 to ptr
  %82 = inttoptr i64 %80 to ptr
  %83 = inttoptr i64 %70 to ptr
  %84 = inttoptr i64 %77 to ptr
  %85 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr nonnull %81, ptr %82, ptr %83, ptr %84)
  %86 = ptrtoint ptr %85 to i64
  %87 = mul i64 %arg3, 4
  %88 = add i64 %87, %86
  %89 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = inttoptr i64 %90 to ptr
  %96 = inttoptr i64 %88 to ptr
  %97 = inttoptr i64 %89 to ptr
  %98 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %94, ptr %95, ptr %96, ptr %97)
  %99 = ptrtoint ptr %98 to i64
  %100 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %101 = load i64, ptr %7, align 8
  %102 = bitcast ptr %result to ptr
  %103 = inttoptr i64 %101 to ptr
  %104 = inttoptr i64 %100 to ptr
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr %102, ptr %103, ptr %104)
  %105 = load i64, ptr %4, align 8
  %106 = sub i64 %105, %2
  %107 = ashr i64 %106, 2
  %108 = call i64 @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr %result, ptr %102, i64 %107)
  store i64 %70, ptr %result, align 8
  store i64 %99, ptr %7, align 8
  %109 = mul i64 %67, 4
  %110 = add i64 %70, %109
  store i64 %110, ptr %4, align 8
  br label %dec_label_pc_7ee77

dec_label_pc_7ee77:                               ; preds = %dec_label_pc_7ebe5, %dec_label_pc_7ebd4, %dec_label_pc_7e976
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_7ee8c, label %dec_label_pc_7ee87

dec_label_pc_7ee87:                               ; preds = %dec_label_pc_7ee77
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7ee8c

dec_label_pc_7ee8c:                               ; preds = %dec_label_pc_7ee87, %dec_label_pc_7ee77
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIiSaIiEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_7ee96:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_7eee0, label %dec_label_pc_7eedb

dec_label_pc_7eedb:                               ; preds = %dec_label_pc_7ee96
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7eee0

dec_label_pc_7eee0:                               ; preds = %dec_label_pc_7eedb, %dec_label_pc_7ee96
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_7eee2:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = sext i32 %arg2 to i64
  %3 = mul i64 %2, 4
  %4 = add i64 %3, %0
  store i64 %4, ptr %stack_var_-32, align 8
  %5 = bitcast ptr %stack_var_-32 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr nonnull %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_7ef46, label %dec_label_pc_7ef41

dec_label_pc_7ef41:                               ; preds = %dec_label_pc_7eee2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7ef46

dec_label_pc_7ef46:                               ; preds = %dec_label_pc_7ef41, %dec_label_pc_7eee2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7ef48:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 2
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7ef6f:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_7efb9, label %dec_label_pc_7efb4

dec_label_pc_7efb4:                               ; preds = %dec_label_pc_7ef6f
  call void @__stack_chk_fail()
  br label %dec_label_pc_7efb9

dec_label_pc_7efb9:                               ; preds = %dec_label_pc_7efb4, %dec_label_pc_7ef6f
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_7efc0:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7efd2:
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIiSaIiEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_7f038:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_7f082, label %dec_label_pc_7f07d

dec_label_pc_7f07d:                               ; preds = %dec_label_pc_7f038
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7f082

dec_label_pc_7f082:                               ; preds = %dec_label_pc_7f07d, %dec_label_pc_7f038
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_7f084:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_7f0d2, label %dec_label_pc_7f0cd

dec_label_pc_7f0cd:                               ; preds = %dec_label_pc_7f084
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7f0d2

dec_label_pc_7f0d2:                               ; preds = %dec_label_pc_7f0cd, %dec_label_pc_7f084
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7f0d4:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7f10a:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7f119:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPiEvT_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f14b:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f176:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_7f198:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIiSaIiEE16_Temporary_valueC2IJRKiEEEPS1_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_7f1aa:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIiSaIiEE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7f208:
  %0 = call i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_7f23c:
  %0 = call i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f25a:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 2
  ret i64 %7
}

define ptr @_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7f29d:
  %0 = call i64 @_ZSt18make_move_iteratorIPiESt13move_iteratorIT_ES2_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPiESt13move_iteratorIT_ES2_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7f2f4:
  %0 = call ptr @_ZSt12__miter_baseIPiET_S1_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPiET_S1_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPiiEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7f343:
  call void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7f375:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7f3aa:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_7f40d, label %dec_label_pc_7f401

dec_label_pc_7f401:                               ; preds = %dec_label_pc_7f3aa
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_7f40d

dec_label_pc_7f40d:                               ; preds = %dec_label_pc_7f401, %dec_label_pc_7f3aa
  %7 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_7f46d, label %dec_label_pc_7f45b

dec_label_pc_7f45b:                               ; preds = %dec_label_pc_7f40d
  %14 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_7f46d, label %dec_label_pc_7f47f

dec_label_pc_7f46d:                               ; preds = %dec_label_pc_7f45b, %dec_label_pc_7f40d
  %16 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_7f47f

dec_label_pc_7f47f:                               ; preds = %dec_label_pc_7f45b, %dec_label_pc_7f46d
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_7f493, label %dec_label_pc_7f48e

dec_label_pc_7f48e:                               ; preds = %dec_label_pc_7f47f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7f493

dec_label_pc_7f493:                               ; preds = %dec_label_pc_7f48e, %dec_label_pc_7f47f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7f49a:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_7f4cf, label %dec_label_pc_7f4b5

dec_label_pc_7f4b5:                               ; preds = %dec_label_pc_7f49a
  %1 = call i64 @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_7f4cf

dec_label_pc_7f4cf:                               ; preds = %dec_label_pc_7f49a, %dec_label_pc_7f4b5
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7f4d1:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f528:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIiEC2ERKS_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f556:
  call void @_ZNSaIiEC2ERKS_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7f58c:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr %result, i64 %arg2)
  store i64 %1, ptr %result, align 8
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  store i64 %0, ptr %3, align 8
  %4 = mul i64 %arg2, 4
  %5 = add i64 %4, %0
  %6 = add i64 %0, 16
  %7 = inttoptr i64 %6 to ptr
  store i64 %5, ptr %7, align 8
  ret i64 %0
}

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7f5e6:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7f61c:
  %0 = mul i64 %arg3, 4
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f651:
  ret void
}

define i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7f664:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_7f67a:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7f68c:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f6c9:
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPiESt13move_iteratorIT_ES2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7f6f3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPiEC2ES0_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_7f748, label %dec_label_pc_7f743

dec_label_pc_7f743:                               ; preds = %dec_label_pc_7f6f3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7f748

dec_label_pc_7f748:                               ; preds = %dec_label_pc_7f743, %dec_label_pc_7f6f3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7f74a:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPiET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7f77f:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7f791:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7f7ff:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7f831:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7f866:
  %0 = call i64 @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr %1)
  ret i64 %2
}

define i64 @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_7f88c:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7f8ba:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPiEC2ES0_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7f904, label %dec_label_pc_7f8ff

dec_label_pc_7f8ff:                               ; preds = %dec_label_pc_7f8ba
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7f904

dec_label_pc_7f904:                               ; preds = %dec_label_pc_7f8ff, %dec_label_pc_7f8ba
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIiEC2ERKS_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f906:
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7f930:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7f962:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = bitcast ptr %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 4, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i32 %3, ptr %6, align 4
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f9a4:
  ret void
}

define ptr @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7f9b7:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPiEC2ES0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7f9ca:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7f9f7:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7fa2c:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fa3e:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7fa6f:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7fa85:
  %0 = alloca i64, align 8
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i64 %arg1, %arg2
  %4 = icmp eq i1 %3, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %4, label %dec_label_pc_7faa4, label %dec_label_pc_7fabc

dec_label_pc_7faa4:                               ; preds = %dec_label_pc_7fa85, %dec_label_pc_7faa4
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %5 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i32 %2, ptr %5, align 4
  %6 = add i64 %stack_var_-32.01.reload, 4
  %7 = icmp eq i64 %6, %arg2
  %8 = icmp eq i1 %7, false
  store i64 %6, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %6, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %8, label %dec_label_pc_7faa4, label %dec_label_pc_7fabc

dec_label_pc_7fabc:                               ; preds = %dec_label_pc_7faa4, %dec_label_pc_7fa85
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fac0:
  %0 = call ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7faf1:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 2305843009213693951, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_7fb58, label %dec_label_pc_7fb53

dec_label_pc_7fb53:                               ; preds = %dec_label_pc_7faf1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7fb58

dec_label_pc_7fb58:                               ; preds = %dec_label_pc_7fb53, %dec_label_pc_7faf1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7fb5a:
  ret i64 2305843009213693951
}

define i64 @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fb72:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_7fbc4, label %dec_label_pc_7fbaa

dec_label_pc_7fbaa:                               ; preds = %dec_label_pc_7fb72
  %6 = icmp ult i64 %arg2, 4611686018427387904
  br i1 %6, label %dec_label_pc_7fbbf, label %dec_label_pc_7fbba

dec_label_pc_7fbba:                               ; preds = %dec_label_pc_7fbaa
  %7 = call i64 @anon2()
  br label %dec_label_pc_7fbbf

dec_label_pc_7fbbf:                               ; preds = %dec_label_pc_7fbba, %dec_label_pc_7fbaa
  %8 = call i64 @anon3()
  br label %dec_label_pc_7fbc4

dec_label_pc_7fbc4:                               ; preds = %dec_label_pc_7fbbf, %dec_label_pc_7fb72
  %9 = mul i64 %arg2, 4
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7fbd8:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fbeb:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fc3a:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fc6b:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fc9c:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7fce4:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i64 %arg1) local_unnamed_addr {
dec_label_pc_7fd02:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fd14:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fd82:
  %0 = call i64 @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fdd1:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 4
  %.pre = and i64 %2, -4
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_7fe30, label %dec_label_pc_7fe00

dec_label_pc_7fe00:                               ; preds = %dec_label_pc_7fdd1
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -4
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_7fe30

dec_label_pc_7fe30:                               ; preds = %dec_label_pc_7fdd1, %dec_label_pc_7fe00
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7fe47:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_7fe55:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_7fe7a, label %dec_label_pc_7feb4

dec_label_pc_7fe7a:                               ; preds = %dec_label_pc_7fe55
  %2 = mul i64 %arg2, 4
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_7feb4

dec_label_pc_7feb4:                               ; preds = %dec_label_pc_7fe55, %dec_label_pc_7fe7a
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7feb6:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_7fed4:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7fef5:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_7ff26:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPiE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPiET_S1_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7ff4c:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7ffba:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPiE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_7ffec:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_80001:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_80032:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 4
  br i1 %3, label %dec_label_pc_80080, label %dec_label_pc_80061

dec_label_pc_80061:                               ; preds = %dec_label_pc_80032
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -4
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_80080

dec_label_pc_80080:                               ; preds = %dec_label_pc_80061, %dec_label_pc_80032
  %9 = and i64 %2, -4
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_80095:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_800c6:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 4
  br i1 %3, label %dec_label_pc_80114, label %dec_label_pc_800f5

dec_label_pc_800f5:                               ; preds = %dec_label_pc_800c6
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -4
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_80114

dec_label_pc_80114:                               ; preds = %dec_label_pc_800f5, %dec_label_pc_800c6
  %9 = and i64 %2, -4
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @_ZNSt6vectorIiSaIiEEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_803d6:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 4
  %2 = add i64 %1, %0
  ret i64 %2
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_93dfc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-100 = alloca i32, align 4
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge.in = xor i32 %10, %11
  store i32 %storemerge.in, ptr %stack_var_-100, align 4
  %12 = call i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %12, ptr %stack_var_-96, align 8
  %13 = ptrtoint ptr %stack_var_-96 to i64
  %14 = ptrtoint ptr %stack_var_-56 to i64
  %15 = trunc i64 %14 to i32
  %16 = trunc i64 %13 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPiEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %15, i32 %16)
  %17 = load i64, ptr %stack_var_-56, align 8
  %18 = call i64 @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %17, i64 1, ptr nonnull %stack_var_-100)
  %19 = call i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %19, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPiEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %15, i32 %16)
  %20 = load i64, ptr %stack_var_-56, align 8
  %21 = call i64 @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %20, i64 1, ptr nonnull %stack_var_-100)
  %22 = call i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %22, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPiEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %15, i32 %16)
  %23 = load i64, ptr %stack_var_-56, align 8
  %24 = call i64 @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %23, i64 1, ptr nonnull %stack_var_-100)
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %25 = call i64 @anon1(i64 %14)
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr nonnull %stack_var_-88)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_93fb1, label %dec_label_pc_93fac

dec_label_pc_93fac:                               ; preds = %dec_label_pc_93dfc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_93fb1

dec_label_pc_93fb1:                               ; preds = %dec_label_pc_93fac, %dec_label_pc_93dfc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_94300:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt6vectorIiSaIiEEixEm(ptr %0, i64 2)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %7, label %dec_label_pc_9434e, label %dec_label_pc_9433b

dec_label_pc_9433b:                               ; preds = %dec_label_pc_94300
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9434e:                               ; preds = %dec_label_pc_94300, %dec_label_pc_9434e
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %8 = mul i64 %indvars.iv4.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_94372, label %dec_label_pc_9434e

dec_label_pc_94372:                               ; preds = %dec_label_pc_9434e
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %dec_label_pc_943c4, label %dec_label_pc_94378

dec_label_pc_94378:                               ; preds = %dec_label_pc_94372
  %12 = sext i32 %3 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_9439b

dec_label_pc_9439b:                               ; preds = %dec_label_pc_9439b, %dec_label_pc_94378
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_943d3, label %dec_label_pc_9439b

dec_label_pc_943c4:                               ; preds = %dec_label_pc_94372
  call void @printLine(ptr @global_var_bc328)
  br label %dec_label_pc_943d3

dec_label_pc_943d3:                               ; preds = %dec_label_pc_9439b, %dec_label_pc_943c4
  call void @free(ptr %4)
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @_ZSt20__throw_length_errorPKc(ptr) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

