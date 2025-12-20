@global_var_6d3dc = external constant [23 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_39209:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_3921f:
  ret i64 %arg1
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3a66e:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3ab12:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3fcb2:
  call void @_ZNSaIjED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIjSaIjEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3fcd2:
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIjSaIjEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3fcf2:
  call void @_ZNSt12_Vector_baseIjSaIjEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3fd12:
  call void @_ZNSaIjEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIjED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3fd3e:
  call void @_ZN9__gnu_cxx13new_allocatorIjED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIjSaIjEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3fd5e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 2
  %6 = bitcast ptr %result to ptr
  %7 = call i64 @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr %result, ptr %6, i64 %5)
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIjSaIjEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_3fdb0:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIjSaIjEED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIjSaIjEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_3fdf8:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3fe46, label %dec_label_pc_3fe41

dec_label_pc_3fe41:                               ; preds = %dec_label_pc_3fdf8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3fe46

dec_label_pc_3fe46:                               ; preds = %dec_label_pc_3fe41, %dec_label_pc_3fdf8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2IPjEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_3fe48:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEmRS4_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_3fe76:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIjSaIjEE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIjSaIjEE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIjSaIjEE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_3ff39, label %dec_label_pc_3ff34

dec_label_pc_3ff34:                               ; preds = %dec_label_pc_3fe76
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3ff39

dec_label_pc_3ff39:                               ; preds = %dec_label_pc_3ff34, %dec_label_pc_3fe76
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIjSaIjEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_3ff3c:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIjEjE17_S_select_on_copyERKS1_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  call void @_ZNSaIjED2Ev(ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result)
  %7 = call i64 @_ZNKSt6vectorIjSaIjEE3endEv(ptr %arg2)
  %8 = call i64 @_ZNKSt6vectorIjSaIjEE5beginEv(ptr %arg2)
  %9 = bitcast ptr %result to ptr
  %10 = inttoptr i64 %6 to ptr
  %11 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjjET0_T_SA_S9_RSaIT1_E(i64 %8, i64 %7, ptr %9, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %0, 8
  %14 = inttoptr i64 %13 to ptr
  store i64 %12, ptr %14, align 8
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_40050, label %dec_label_pc_4004b

dec_label_pc_4004b:                               ; preds = %dec_label_pc_3ff3c
  call void @__stack_chk_fail()
  br label %dec_label_pc_40050

dec_label_pc_40050:                               ; preds = %dec_label_pc_4004b, %dec_label_pc_3ff3c
  ret void
}

define void @_ZNSaIjEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4005c:
  call void @_ZN9__gnu_cxx13new_allocatorIjEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4007c:
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

define void @_ZN9__gnu_cxx13new_allocatorIjED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_400ae:
  ret void
}

define i64 @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_400be:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_400f4, label %dec_label_pc_400dd

dec_label_pc_400dd:                               ; preds = %dec_label_pc_400be
  %1 = call i64 @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_400f4

dec_label_pc_400f4:                               ; preds = %dec_label_pc_400dd, %dec_label_pc_400be
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_400f8:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4010a:
  call void @_ZSt8_DestroyIPjEvT_S1_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_40138:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_4015a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIjSaIjEE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_4016c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_401b6, label %dec_label_pc_401b1

dec_label_pc_401b1:                               ; preds = %dec_label_pc_4016c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_401b6

dec_label_pc_401b6:                               ; preds = %dec_label_pc_401b1, %dec_label_pc_4016c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_401b8:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 2
  ret i64 %7
}

define i64 @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_401fc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_406fd, label %dec_label_pc_4023e

dec_label_pc_4023e:                               ; preds = %dec_label_pc_401fc
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
  br i1 %11, label %dec_label_pc_4046b, label %dec_label_pc_40265

dec_label_pc_40265:                               ; preds = %dec_label_pc_4023e
  call void @_ZNSt6vectorIjSaIjEE16_Temporary_valueC2IJRKjEEEPS1_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %12 = call i64 @_ZNSt6vectorIjSaIjEE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %13 = inttoptr i64 %12 to ptr
  %14 = call i64 @_ZNSt6vectorIjSaIjEE3endEv(ptr %result)
  store i64 %14, ptr %stack_var_-120, align 8
  %15 = call i64 @_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %16 = load i64, ptr %7, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt i64 %15, %arg3
  %19 = call i64 @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %18, label %dec_label_pc_402d3, label %dec_label_pc_403ac

dec_label_pc_402d3:                               ; preds = %dec_label_pc_40265
  %20 = load i64, ptr %7, align 8
  %21 = mul i64 %arg3, 4
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = inttoptr i64 %20 to ptr
  %25 = inttoptr i64 %19 to ptr
  %26 = call ptr @_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_(ptr %23, ptr %24, ptr %24, ptr %25)
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %27, %21
  store i64 %28, ptr %7, align 8
  %29 = sub i64 %16, %21
  %30 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr nonnull %stack_var_-136)
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = inttoptr i64 %29 to ptr
  %35 = call ptr @_ZSt13move_backwardIPjS0_ET0_T_S2_S1_(ptr %33, ptr %34, ptr %17)
  %36 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr nonnull %stack_var_-136)
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %21
  %40 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr nonnull %stack_var_-136)
  %41 = inttoptr i64 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %39 to ptr
  call void @_ZSt4fillIPjjEvT_S1_RKT0_(ptr %43, ptr %44, ptr %13)
  br label %dec_label_pc_4045a

dec_label_pc_403ac:                               ; preds = %dec_label_pc_40265
  %45 = sub i64 %arg3, %15
  %46 = load i64, ptr %7, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = inttoptr i64 %19 to ptr
  %49 = call ptr @_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E(ptr %47, i64 %45, ptr %13, ptr %48)
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = call i64 @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result)
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr nonnull %stack_var_-136)
  %54 = inttoptr i64 %53 to ptr
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = inttoptr i64 %52 to ptr
  %58 = inttoptr i64 %51 to ptr
  %59 = call ptr @_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_(ptr %56, ptr %17, ptr %57, ptr %58)
  %60 = load i64, ptr %7, align 8
  %61 = mul i64 %15, 4
  %62 = add i64 %60, %61
  store i64 %62, ptr %7, align 8
  %63 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr nonnull %stack_var_-136)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  call void @_ZSt4fillIPjjEvT_S1_RKT0_(ptr %66, ptr %17, ptr %13)
  br label %dec_label_pc_4045a

dec_label_pc_4045a:                               ; preds = %dec_label_pc_403ac, %dec_label_pc_402d3
  call void @_ZNSt6vectorIjSaIjEE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_406fd

dec_label_pc_4046b:                               ; preds = %dec_label_pc_4023e
  %67 = call i64 @_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_6d3dc)
  %68 = call i64 @_ZNSt6vectorIjSaIjEE5beginEv(ptr %result)
  store i64 %68, ptr %stack_var_-120, align 8
  %69 = call i64 @_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %70 = call i64 @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm(ptr %result, i64 %67)
  %71 = call i64 @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result)
  %72 = mul i64 %69, 4
  %73 = add i64 %72, %70
  %74 = inttoptr i64 %73 to ptr
  %75 = inttoptr i64 %71 to ptr
  %76 = call ptr @_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E(ptr %74, i64 %arg3, ptr %arg4, ptr %75)
  %77 = call i64 @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result)
  %78 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr nonnull %stack_var_-136)
  %79 = inttoptr i64 %78 to ptr
  %80 = load i64, ptr %79, align 8
  %81 = bitcast ptr %stack_var_-136 to ptr
  %82 = inttoptr i64 %80 to ptr
  %83 = inttoptr i64 %70 to ptr
  %84 = inttoptr i64 %77 to ptr
  %85 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_(ptr nonnull %81, ptr %82, ptr %83, ptr %84)
  %86 = ptrtoint ptr %85 to i64
  %87 = mul i64 %arg3, 4
  %88 = add i64 %87, %86
  %89 = call i64 @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result)
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr nonnull %stack_var_-136)
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = inttoptr i64 %90 to ptr
  %96 = inttoptr i64 %88 to ptr
  %97 = inttoptr i64 %89 to ptr
  %98 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_(ptr %94, ptr %95, ptr %96, ptr %97)
  %99 = ptrtoint ptr %98 to i64
  %100 = call i64 @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result)
  %101 = load i64, ptr %7, align 8
  %102 = bitcast ptr %result to ptr
  %103 = inttoptr i64 %101 to ptr
  %104 = inttoptr i64 %100 to ptr
  call void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr %102, ptr %103, ptr %104)
  %105 = load i64, ptr %4, align 8
  %106 = sub i64 %105, %2
  %107 = ashr i64 %106, 2
  %108 = call i64 @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr %result, ptr %102, i64 %107)
  store i64 %70, ptr %result, align 8
  store i64 %99, ptr %7, align 8
  %109 = mul i64 %67, 4
  %110 = add i64 %70, %109
  store i64 %110, ptr %4, align 8
  br label %dec_label_pc_406fd

dec_label_pc_406fd:                               ; preds = %dec_label_pc_4046b, %dec_label_pc_4045a, %dec_label_pc_401fc
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_40712, label %dec_label_pc_4070d

dec_label_pc_4070d:                               ; preds = %dec_label_pc_406fd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_40712

dec_label_pc_40712:                               ; preds = %dec_label_pc_4070d, %dec_label_pc_406fd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIjSaIjEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_4071c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_40766, label %dec_label_pc_40761

dec_label_pc_40761:                               ; preds = %dec_label_pc_4071c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_40766

dec_label_pc_40766:                               ; preds = %dec_label_pc_40761, %dec_label_pc_4071c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_40768:
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
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr nonnull %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_407cc, label %dec_label_pc_407c7

dec_label_pc_407c7:                               ; preds = %dec_label_pc_40768
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_407cc

dec_label_pc_407cc:                               ; preds = %dec_label_pc_407c7, %dec_label_pc_40768
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_407ce:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 2
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIjEjE17_S_select_on_copyERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_407f5:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIjEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_4083f, label %dec_label_pc_4083a

dec_label_pc_4083a:                               ; preds = %dec_label_pc_407f5
  call void @__stack_chk_fail()
  br label %dec_label_pc_4083f

dec_label_pc_4083f:                               ; preds = %dec_label_pc_4083a, %dec_label_pc_407f5
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_40846:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_40858:
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIjSaIjEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_408be:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_40908, label %dec_label_pc_40903

dec_label_pc_40903:                               ; preds = %dec_label_pc_408be
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_40908

dec_label_pc_40908:                               ; preds = %dec_label_pc_40903, %dec_label_pc_408be
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIjSaIjEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_4090a:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_40958, label %dec_label_pc_40953

dec_label_pc_40953:                               ; preds = %dec_label_pc_4090a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_40958

dec_label_pc_40958:                               ; preds = %dec_label_pc_40953, %dec_label_pc_4090a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjjET0_T_SA_S9_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_4095a:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIjEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_40990:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4099f:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPjEvT_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_409d1:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_409fc:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_40a1e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIjSaIjEE16_Temporary_valueC2IJRKjEEEPS1_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_40a30:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIjSaIjEE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIjEE9constructIjJRKjEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIjSaIjEE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_40a8e:
  %0 = call i64 @_ZNSt6vectorIjSaIjEE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIjEE7destroyIjEEvRS0_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIjSaIjEE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_40ac2:
  %0 = call i64 @_ZNSt6vectorIjSaIjEE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPjSt6vectorIjSaIjEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_40ae0:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 2
  ret i64 %7
}

define ptr @_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_40b23:
  %0 = call i64 @_ZSt18make_move_iteratorIPjESt13move_iteratorIT_ES2_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPjESt13move_iteratorIT_ES2_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPjES1_jET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPjS0_ET0_T_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_40b7a:
  %0 = call ptr @_ZSt12__miter_baseIPjET_S1_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPjET_S1_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPjS0_ET1_T0_S2_S1_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPjjEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_40bc9:
  call void @_ZSt8__fill_aIPjjEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_40bfb:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPjmjET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_40c30:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIjSaIjEE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_40c93, label %dec_label_pc_40c87

dec_label_pc_40c87:                               ; preds = %dec_label_pc_40c30
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_40c93

dec_label_pc_40c93:                               ; preds = %dec_label_pc_40c87, %dec_label_pc_40c30
  %7 = call i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_40cf3, label %dec_label_pc_40ce1

dec_label_pc_40ce1:                               ; preds = %dec_label_pc_40c93
  %14 = call i64 @_ZNKSt6vectorIjSaIjEE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_40cf3, label %dec_label_pc_40d05

dec_label_pc_40cf3:                               ; preds = %dec_label_pc_40ce1, %dec_label_pc_40c93
  %16 = call i64 @_ZNKSt6vectorIjSaIjEE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_40d05

dec_label_pc_40d05:                               ; preds = %dec_label_pc_40ce1, %dec_label_pc_40cf3
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_40d19, label %dec_label_pc_40d14

dec_label_pc_40d14:                               ; preds = %dec_label_pc_40d05
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_40d19

dec_label_pc_40d19:                               ; preds = %dec_label_pc_40d14, %dec_label_pc_40d05
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_40d20:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_40d55, label %dec_label_pc_40d3b

dec_label_pc_40d3b:                               ; preds = %dec_label_pc_40d20
  %1 = call i64 @_ZNSt16allocator_traitsISaIjEE8allocateERS0_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_40d55

dec_label_pc_40d55:                               ; preds = %dec_label_pc_40d20, %dec_label_pc_40d3b
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_40d57:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIjSt13move_iteratorIPjEET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIjSt13move_iteratorIPjEET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPjES1_jET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIjEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_40dae:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIjEC2ERKS_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_40ddc:
  call void @_ZNSaIjEC2ERKS_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_40e12:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm(ptr %result, i64 %arg2)
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

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_40e6c:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_40ea2:
  %0 = mul i64 %arg3, 4
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_40ed7:
  ret void
}

define i64 @_ZNSt6vectorIjSaIjEE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_40eea:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_40f00:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIjEE9constructIjJRKjEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_40f12:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIjE9constructIjJRKjEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIjEE7destroyIjEEvRS0_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_40f4f:
  call void @_ZN9__gnu_cxx13new_allocatorIjE7destroyIjEEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPjESt13move_iteratorIT_ES2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_40f79:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPjEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPjEC2ES0_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_40fce, label %dec_label_pc_40fc9

dec_label_pc_40fc9:                               ; preds = %dec_label_pc_40f79
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_40fce

dec_label_pc_40fce:                               ; preds = %dec_label_pc_40fc9, %dec_label_pc_40f79
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPjES1_jET0_T_S4_S3_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_40fd0:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPjES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPjET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_41005:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPjS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_41017:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPjET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPjET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPjET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPjS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPjET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPjjEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_41085:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPjmjET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_410b7:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjmjEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIjSaIjEE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_410ec:
  %0 = call i64 @_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_(ptr %1)
  ret i64 %2
}

define i64 @_ZNSt16allocator_traitsISaIjEE8allocateERS0_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_41112:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIjSt13move_iteratorIPjEET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_41140:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPjEC2ES0_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_4118a, label %dec_label_pc_41185

dec_label_pc_41185:                               ; preds = %dec_label_pc_41140
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4118a

dec_label_pc_4118a:                               ; preds = %dec_label_pc_41185, %dec_label_pc_41140
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIjEC2ERKS_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4118c:
  call void @_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_411b6:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIjE9constructIjJRKjEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_411e8:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKjEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = bitcast ptr %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 4, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i32 %3, ptr %6, align 4
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorIjE7destroyIjEEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4122a:
  ret void
}

define ptr @_ZSt4moveIRPjEONSt16remove_referenceIT_E4typeEOS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4123d:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPjEC2ES0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_41250:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPjEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPjES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4127d:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPjES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPjET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_412b2:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPjS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_412c4:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPjS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPjET_RKS1_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_412f5:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4130b:
  %0 = alloca i64, align 8
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i64 %arg1, %arg2
  %4 = icmp eq i1 %3, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4132a, label %dec_label_pc_41342

dec_label_pc_4132a:                               ; preds = %dec_label_pc_4130b, %dec_label_pc_4132a
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %5 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i32 %2, ptr %5, align 4
  %6 = add i64 %stack_var_-32.01.reload, 4
  %7 = icmp eq i64 %6, %arg2
  %8 = icmp eq i1 %7, false
  store i64 %6, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %6, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %8, label %dec_label_pc_4132a, label %dec_label_pc_41342

dec_label_pc_41342:                               ; preds = %dec_label_pc_4132a, %dec_label_pc_4130b
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjmjEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_41346:
  %0 = call ptr @_ZSt6fill_nIPjmjET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_41377:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 2305843009213693951, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_413de, label %dec_label_pc_413d9

dec_label_pc_413d9:                               ; preds = %dec_label_pc_41377
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_413de

dec_label_pc_413de:                               ; preds = %dec_label_pc_413d9, %dec_label_pc_41377
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_413e0:
  ret i64 2305843009213693951
}

define i64 @_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_413f8:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_4144a, label %dec_label_pc_41430

dec_label_pc_41430:                               ; preds = %dec_label_pc_413f8
  %6 = icmp ult i64 %arg2, 4611686018427387904
  br i1 %6, label %dec_label_pc_41445, label %dec_label_pc_41440

dec_label_pc_41440:                               ; preds = %dec_label_pc_41430
  %7 = call i64 @anon2()
  br label %dec_label_pc_41445

dec_label_pc_41445:                               ; preds = %dec_label_pc_41440, %dec_label_pc_41430
  %8 = call i64 @anon3()
  br label %dec_label_pc_4144a

dec_label_pc_4144a:                               ; preds = %dec_label_pc_41445, %dec_label_pc_413f8
  %9 = mul i64 %arg2, 4
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4145e:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_41471:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPjES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_414c0:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPjES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPjS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_414f1:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIjEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPjmjET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_41522:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPjENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4156a:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_(i64 %arg1) local_unnamed_addr {
dec_label_pc_41588:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4159a:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPjET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPjET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPjES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_41608:
  %0 = call i64 @_ZSt12__miter_baseIPjEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPjEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPjS0_ET1_T0_S2_S1_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIjEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_41657:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 4
  %.pre = and i64 %2, -4
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_416b6, label %dec_label_pc_41686

dec_label_pc_41686:                               ; preds = %dec_label_pc_41657
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -4
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_416b6

dec_label_pc_416b6:                               ; preds = %dec_label_pc_41657, %dec_label_pc_41686
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPjENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_416cd:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_416db:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_41700, label %dec_label_pc_4173a

dec_label_pc_41700:                               ; preds = %dec_label_pc_416db
  %2 = mul i64 %arg2, 4
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPjjEvT_S1_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4173a

dec_label_pc_4173a:                               ; preds = %dec_label_pc_416db, %dec_label_pc_41700
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_4173c:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_4175a:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4177b:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPjEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_417ac:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPjE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPjET_S1_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPjS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_417d2:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPjET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPjET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPjET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPjS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPjET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_41840:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPjE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_41872:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPjS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_41887:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPjS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_418b8:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 4
  br i1 %3, label %dec_label_pc_41906, label %dec_label_pc_418e7

dec_label_pc_418e7:                               ; preds = %dec_label_pc_418b8
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -4
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_41906

dec_label_pc_41906:                               ; preds = %dec_label_pc_418e7, %dec_label_pc_418b8
  %9 = and i64 %2, -4
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPjS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4191b:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4194c:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 4
  br i1 %3, label %dec_label_pc_4199a, label %dec_label_pc_4197b

dec_label_pc_4197b:                               ; preds = %dec_label_pc_4194c
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -4
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_4199a

dec_label_pc_4199a:                               ; preds = %dec_label_pc_4197b, %dec_label_pc_4194c
  %9 = and i64 %2, -4
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @_ZNSt6vectorIjSaIjEEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_41a7a:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 4
  %2 = add i64 %1, %0
  ret i64 %2
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_45d07:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-100 = alloca i32, align 4
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIjSaIjEEC2Ev(ptr nonnull %stack_var_-88)
  store i32 2, ptr %stack_var_-100, align 4
  %1 = call i64 @_ZNSt6vectorIjSaIjEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %1, ptr %stack_var_-96, align 8
  %2 = ptrtoint ptr %stack_var_-96 to i64
  %3 = ptrtoint ptr %stack_var_-56 to i64
  %4 = trunc i64 %3 to i32
  %5 = trunc i64 %2 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2IPjEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %4, i32 %5)
  %6 = load i64, ptr %stack_var_-56, align 8
  %7 = call i64 @_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %6, i64 1, ptr nonnull %stack_var_-100)
  %8 = call i64 @_ZNSt6vectorIjSaIjEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %8, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2IPjEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %4, i32 %5)
  %9 = load i64, ptr %stack_var_-56, align 8
  %10 = call i64 @_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %9, i64 1, ptr nonnull %stack_var_-100)
  %11 = call i64 @_ZNSt6vectorIjSaIjEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %11, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2IPjEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %4, i32 %5)
  %12 = load i64, ptr %stack_var_-56, align 8
  %13 = call i64 @_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %12, i64 1, ptr nonnull %stack_var_-100)
  call void @_ZNSt6vectorIjSaIjEEC2ERKS1_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %14 = call i64 @anon1(i64 %3)
  call void @_ZNSt6vectorIjSaIjEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIjSaIjEED2Ev(ptr nonnull %stack_var_-88)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_45e7a, label %dec_label_pc_45e75

dec_label_pc_45e75:                               ; preds = %dec_label_pc_45d07
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_45e7a

dec_label_pc_45e7a:                               ; preds = %dec_label_pc_45e75, %dec_label_pc_45d07
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_4606a:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt6vectorIjSaIjEEixEm(ptr %0, i64 2)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_460a8, label %dec_label_pc_46096

dec_label_pc_46096:                               ; preds = %dec_label_pc_4606a
  %5 = mul i32 %3, 2
  call void @printUnsignedLine(i32 %5)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_460a8

dec_label_pc_460a8:                               ; preds = %dec_label_pc_46096, %dec_label_pc_4606a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
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

