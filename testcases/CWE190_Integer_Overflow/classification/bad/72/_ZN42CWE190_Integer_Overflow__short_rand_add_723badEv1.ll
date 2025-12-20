@global_var_77896 = external constant [23 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_3fdcf:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_3fde5:
  ret i64 %arg1
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_41258:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_416fe:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define void @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4abca:
  call void @_ZNSaIsED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIsSaIsEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4abea:
  call void @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIsSaIsEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4ac0a:
  call void @_ZNSt12_Vector_baseIsSaIsEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4ac2a:
  call void @_ZNSaIsEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIsED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4ac56:
  call void @_ZN9__gnu_cxx13new_allocatorIsED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIsSaIsEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4ac76:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 1
  %6 = bitcast ptr %result to ptr
  %7 = call i64 @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(ptr %result, ptr %6, i64 %5)
  call void @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIsSaIsEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4acc6:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPssEvT_S1_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIsSaIsEED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIsSaIsEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_4ad0e:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_4ad5c, label %dec_label_pc_4ad57

dec_label_pc_4ad57:                               ; preds = %dec_label_pc_4ad0e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4ad5c

dec_label_pc_4ad5c:                               ; preds = %dec_label_pc_4ad57, %dec_label_pc_4ad0e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEC2IPsEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_4ad5e:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIsSaIsEE6insertEN9__gnu_cxx17__normal_iteratorIPKsS1_EEmRS4_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_4ad8c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIsSaIsEE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIsSaIsEE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIsSaIsEE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_4ae4f, label %dec_label_pc_4ae4a

dec_label_pc_4ae4a:                               ; preds = %dec_label_pc_4ad8c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4ae4f

dec_label_pc_4ae4f:                               ; preds = %dec_label_pc_4ae4a, %dec_label_pc_4ad8c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIsSaIsEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4ae52:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIsEsE17_S_select_on_copyERKS1_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIsSaIsEE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIsSaIsEEC2EmRKS0_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  call void @_ZNSaIsED2Ev(ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result)
  %7 = call i64 @_ZNKSt6vectorIsSaIsEE3endEv(ptr %arg2)
  %8 = call i64 @_ZNKSt6vectorIsSaIsEE5beginEv(ptr %arg2)
  %9 = bitcast ptr %result to ptr
  %10 = inttoptr i64 %6 to ptr
  %11 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPssET0_T_SA_S9_RSaIT1_E(i64 %8, i64 %7, ptr %9, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %0, 8
  %14 = inttoptr i64 %13 to ptr
  store i64 %12, ptr %14, align 8
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_4af66, label %dec_label_pc_4af61

dec_label_pc_4af61:                               ; preds = %dec_label_pc_4ae52
  call void @__stack_chk_fail()
  br label %dec_label_pc_4af66

dec_label_pc_4af66:                               ; preds = %dec_label_pc_4af61, %dec_label_pc_4ae52
  ret void
}

define void @_ZNSaIsEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4af72:
  call void @_ZN9__gnu_cxx13new_allocatorIsEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4af92:
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

define void @_ZN9__gnu_cxx13new_allocatorIsED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4afc4:
  ret void
}

define i64 @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4afd4:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_4b00a, label %dec_label_pc_4aff3

dec_label_pc_4aff3:                               ; preds = %dec_label_pc_4afd4
  %1 = call i64 @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b00a

dec_label_pc_4b00a:                               ; preds = %dec_label_pc_4aff3, %dec_label_pc_4afd4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b00e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPssEvT_S1_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4b020:
  call void @_ZSt8_DestroyIPsEvT_S1_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4b04e:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b070:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIsSaIsEE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b082:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4b0cc, label %dec_label_pc_4b0c7

dec_label_pc_4b0c7:                               ; preds = %dec_label_pc_4b082
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b0cc

dec_label_pc_4b0cc:                               ; preds = %dec_label_pc_4b0c7, %dec_label_pc_4b082
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_4b0ce:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 1
  ret i64 %7
}

define i64 @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_4b110:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_4b5f9, label %dec_label_pc_4b152

dec_label_pc_4b152:                               ; preds = %dec_label_pc_4b110
  %2 = ptrtoint ptr %result to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %2, 8
  %7 = inttoptr i64 %6 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = sub i64 %5, %8
  %10 = ashr i64 %9, 1
  %11 = icmp ult i64 %10, %arg3
  br i1 %11, label %dec_label_pc_4b379, label %dec_label_pc_4b178

dec_label_pc_4b178:                               ; preds = %dec_label_pc_4b152
  call void @_ZNSt6vectorIsSaIsEE16_Temporary_valueC2IJRKsEEEPS1_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %12 = call i64 @_ZNSt6vectorIsSaIsEE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %13 = inttoptr i64 %12 to ptr
  %14 = call i64 @_ZNSt6vectorIsSaIsEE3endEv(ptr %result)
  store i64 %14, ptr %stack_var_-120, align 8
  %15 = call i64 @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %16 = load i64, ptr %7, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt i64 %15, %arg3
  %19 = call i64 @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %18, label %dec_label_pc_4b1e6, label %dec_label_pc_4b2bb

dec_label_pc_4b1e6:                               ; preds = %dec_label_pc_4b178
  %20 = load i64, ptr %7, align 8
  %21 = mul i64 %arg3, 2
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = inttoptr i64 %20 to ptr
  %25 = inttoptr i64 %19 to ptr
  %26 = call ptr @_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_(ptr %23, ptr %24, ptr %24, ptr %25)
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %27, %21
  store i64 %28, ptr %7, align 8
  %29 = sub i64 %16, %21
  %30 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr nonnull %stack_var_-136)
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = inttoptr i64 %29 to ptr
  %35 = call ptr @_ZSt13move_backwardIPsS0_ET0_T_S2_S1_(ptr %33, ptr %34, ptr %17)
  %36 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr nonnull %stack_var_-136)
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %21
  %40 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr nonnull %stack_var_-136)
  %41 = inttoptr i64 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %39 to ptr
  call void @_ZSt4fillIPssEvT_S1_RKT0_(ptr %43, ptr %44, ptr %13)
  br label %dec_label_pc_4b368

dec_label_pc_4b2bb:                               ; preds = %dec_label_pc_4b178
  %45 = sub i64 %arg3, %15
  %46 = load i64, ptr %7, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = inttoptr i64 %19 to ptr
  %49 = call ptr @_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E(ptr %47, i64 %45, ptr %13, ptr %48)
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = call i64 @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result)
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr nonnull %stack_var_-136)
  %54 = inttoptr i64 %53 to ptr
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = inttoptr i64 %52 to ptr
  %58 = inttoptr i64 %51 to ptr
  %59 = call ptr @_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_(ptr %56, ptr %17, ptr %57, ptr %58)
  %60 = load i64, ptr %7, align 8
  %61 = mul i64 %15, 2
  %62 = add i64 %60, %61
  store i64 %62, ptr %7, align 8
  %63 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr nonnull %stack_var_-136)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  call void @_ZSt4fillIPssEvT_S1_RKT0_(ptr %66, ptr %17, ptr %13)
  br label %dec_label_pc_4b368

dec_label_pc_4b368:                               ; preds = %dec_label_pc_4b2bb, %dec_label_pc_4b1e6
  call void @_ZNSt6vectorIsSaIsEE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_4b5f9

dec_label_pc_4b379:                               ; preds = %dec_label_pc_4b152
  %67 = call i64 @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_77896)
  %68 = call i64 @_ZNSt6vectorIsSaIsEE5beginEv(ptr %result)
  store i64 %68, ptr %stack_var_-120, align 8
  %69 = call i64 @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %70 = call i64 @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(ptr %result, i64 %67)
  %71 = call i64 @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result)
  %72 = mul i64 %69, 2
  %73 = add i64 %72, %70
  %74 = inttoptr i64 %73 to ptr
  %75 = inttoptr i64 %71 to ptr
  %76 = call ptr @_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E(ptr %74, i64 %arg3, ptr %arg4, ptr %75)
  %77 = call i64 @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result)
  %78 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr nonnull %stack_var_-136)
  %79 = inttoptr i64 %78 to ptr
  %80 = load i64, ptr %79, align 8
  %81 = bitcast ptr %stack_var_-136 to ptr
  %82 = inttoptr i64 %80 to ptr
  %83 = inttoptr i64 %70 to ptr
  %84 = inttoptr i64 %77 to ptr
  %85 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(ptr nonnull %81, ptr %82, ptr %83, ptr %84)
  %86 = ptrtoint ptr %85 to i64
  %87 = mul i64 %arg3, 2
  %88 = add i64 %87, %86
  %89 = call i64 @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result)
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr nonnull %stack_var_-136)
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = inttoptr i64 %90 to ptr
  %96 = inttoptr i64 %88 to ptr
  %97 = inttoptr i64 %89 to ptr
  %98 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(ptr %94, ptr %95, ptr %96, ptr %97)
  %99 = ptrtoint ptr %98 to i64
  %100 = call i64 @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result)
  %101 = load i64, ptr %7, align 8
  %102 = bitcast ptr %result to ptr
  %103 = inttoptr i64 %101 to ptr
  %104 = inttoptr i64 %100 to ptr
  call void @_ZSt8_DestroyIPssEvT_S1_RSaIT0_E(ptr %102, ptr %103, ptr %104)
  %105 = load i64, ptr %4, align 8
  %106 = sub i64 %105, %2
  %107 = ashr i64 %106, 1
  %108 = call i64 @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(ptr %result, ptr %102, i64 %107)
  store i64 %70, ptr %result, align 8
  store i64 %99, ptr %7, align 8
  %109 = mul i64 %67, 2
  %110 = add i64 %70, %109
  store i64 %110, ptr %4, align 8
  br label %dec_label_pc_4b5f9

dec_label_pc_4b5f9:                               ; preds = %dec_label_pc_4b379, %dec_label_pc_4b368, %dec_label_pc_4b110
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_4b60e, label %dec_label_pc_4b609

dec_label_pc_4b609:                               ; preds = %dec_label_pc_4b5f9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b60e

dec_label_pc_4b60e:                               ; preds = %dec_label_pc_4b609, %dec_label_pc_4b5f9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIsSaIsEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b618:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4b662, label %dec_label_pc_4b65d

dec_label_pc_4b65d:                               ; preds = %dec_label_pc_4b618
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b662

dec_label_pc_4b662:                               ; preds = %dec_label_pc_4b65d, %dec_label_pc_4b618
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_4b664:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = sext i32 %arg2 to i64
  %3 = mul i64 %2, 2
  %4 = add i64 %3, %0
  store i64 %4, ptr %stack_var_-32, align 8
  %5 = bitcast ptr %stack_var_-32 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr nonnull %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_4b6c7, label %dec_label_pc_4b6c2

dec_label_pc_4b6c2:                               ; preds = %dec_label_pc_4b664
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b6c7

dec_label_pc_4b6c7:                               ; preds = %dec_label_pc_4b6c2, %dec_label_pc_4b664
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIsSaIsEE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b6ca:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 1
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIsEsE17_S_select_on_copyERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4b6f0:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIsEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_4b73a, label %dec_label_pc_4b735

dec_label_pc_4b735:                               ; preds = %dec_label_pc_4b6f0
  call void @__stack_chk_fail()
  br label %dec_label_pc_4b73a

dec_label_pc_4b73a:                               ; preds = %dec_label_pc_4b735, %dec_label_pc_4b6f0
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b740:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIsSaIsEEC2EmRKS0_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4b752:
  call void @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIsSaIsEE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIsSaIsEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b7b8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4b802, label %dec_label_pc_4b7fd

dec_label_pc_4b7fd:                               ; preds = %dec_label_pc_4b7b8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b802

dec_label_pc_4b802:                               ; preds = %dec_label_pc_4b7fd, %dec_label_pc_4b7b8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIsSaIsEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b804:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_4b852, label %dec_label_pc_4b84d

dec_label_pc_4b84d:                               ; preds = %dec_label_pc_4b804
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b852

dec_label_pc_4b852:                               ; preds = %dec_label_pc_4b84d, %dec_label_pc_4b804
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPssET0_T_SA_S9_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_4b854:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPsET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIsEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4b88a:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4b899:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPsEvT_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_4b8cb:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4b8f6:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b918:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIsSaIsEE16_Temporary_valueC2IJRKsEEEPS1_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_4b92a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIsSaIsEE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIsSaIsEE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_4b988:
  %0 = call i64 @_ZNSt6vectorIsSaIsEE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIsEE7destroyIsEEvRS0_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIsSaIsEE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_4b9bc:
  %0 = call i64 @_ZNSt6vectorIsSaIsEE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_4b9da:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 1
  ret i64 %7
}

define ptr @_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_4ba1c:
  %0 = call i64 @_ZSt18make_move_iteratorIPsESt13move_iteratorIT_ES2_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPsESt13move_iteratorIT_ES2_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPsS0_ET0_T_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4ba73:
  %0 = call ptr @_ZSt12__miter_baseIPsET_S1_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPsET_S1_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPsS0_ET1_T0_S2_S1_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPssEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4bac2:
  call void @_ZSt8__fill_aIPssEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_4baf4:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPsmsET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4bb2a:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIsSaIsEE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIsSaIsEE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_4bb8d, label %dec_label_pc_4bb81

dec_label_pc_4bb81:                               ; preds = %dec_label_pc_4bb2a
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_4bb8d

dec_label_pc_4bb8d:                               ; preds = %dec_label_pc_4bb81, %dec_label_pc_4bb2a
  %7 = call i64 @_ZNKSt6vectorIsSaIsEE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIsSaIsEE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIsSaIsEE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_4bbed, label %dec_label_pc_4bbdb

dec_label_pc_4bbdb:                               ; preds = %dec_label_pc_4bb8d
  %14 = call i64 @_ZNKSt6vectorIsSaIsEE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_4bbed, label %dec_label_pc_4bbff

dec_label_pc_4bbed:                               ; preds = %dec_label_pc_4bbdb, %dec_label_pc_4bb8d
  %16 = call i64 @_ZNKSt6vectorIsSaIsEE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_4bbff

dec_label_pc_4bbff:                               ; preds = %dec_label_pc_4bbdb, %dec_label_pc_4bbed
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_4bc13, label %dec_label_pc_4bc0e

dec_label_pc_4bc0e:                               ; preds = %dec_label_pc_4bbff
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4bc13

dec_label_pc_4bc13:                               ; preds = %dec_label_pc_4bc0e, %dec_label_pc_4bbff
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_4bc1a:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_4bc4f, label %dec_label_pc_4bc35

dec_label_pc_4bc35:                               ; preds = %dec_label_pc_4bc1a
  %1 = call i64 @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_4bc4f

dec_label_pc_4bc4f:                               ; preds = %dec_label_pc_4bc1a, %dec_label_pc_4bc35
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_4bc51:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIsEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4bca8:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIsEC2ERKS_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4bcd6:
  call void @_ZNSaIsEC2ERKS_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIsSaIsEE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_4bd0c:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(ptr %result, i64 %arg2)
  store i64 %1, ptr %result, align 8
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  store i64 %0, ptr %3, align 8
  %4 = mul i64 %arg2, 2
  %5 = add i64 %4, %0
  %6 = add i64 %0, 16
  %7 = inttoptr i64 %6 to ptr
  store i64 %5, ptr %7, align 8
  ret i64 %0
}

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPsET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4bd65:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPsEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4bd9a:
  %0 = mul i64 %arg3, 2
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_4bdcb:
  ret void
}

define i64 @_ZNSt6vectorIsSaIsEE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_4bdde:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_4bdf4:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4be06:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIsEE7destroyIsEEvRS0_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_4be43:
  call void @_ZN9__gnu_cxx13new_allocatorIsE7destroyIsEEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPsESt13move_iteratorIT_ES2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4be6d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPsEC2ES0_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_4bec2, label %dec_label_pc_4bebd

dec_label_pc_4bebd:                               ; preds = %dec_label_pc_4be6d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4bec2

dec_label_pc_4bec2:                               ; preds = %dec_label_pc_4bebd, %dec_label_pc_4be6d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_4bec4:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPsET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4bef9:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPsS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4bf0b:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPsET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPsET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPsET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPsS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPsET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPssEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4bf79:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPssEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPsmsET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4bfab:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPsmsEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIsSaIsEE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_4bfe0:
  %0 = call i64 @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(ptr %1)
  ret i64 %2
}

define i64 @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_4c006:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4c034:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPsEC2ES0_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_4c07e, label %dec_label_pc_4c079

dec_label_pc_4c079:                               ; preds = %dec_label_pc_4c034
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4c07e

dec_label_pc_4c07e:                               ; preds = %dec_label_pc_4c079, %dec_label_pc_4c034
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIsEC2ERKS_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4c080:
  call void @_ZN9__gnu_cxx13new_allocatorIsEC2ERKS1_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPsEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c0aa:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPsET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4c0dc:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKsEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = bitcast ptr %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 2, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i16 %3, ptr %6, align 2
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorIsE7destroyIsEEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4c120:
  ret void
}

define ptr @_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4c133:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPsEC2ES0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4c146:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c173:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPsET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4c1a8:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPsS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c1ba:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPsS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPsET_RKS1_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_4c1eb:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPssEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_4c201:
  %0 = alloca i64, align 8
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp eq i64 %arg1, %arg2
  %4 = icmp eq i1 %3, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4c222, label %dec_label_pc_4c23c

dec_label_pc_4c222:                               ; preds = %dec_label_pc_4c201, %dec_label_pc_4c222
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %5 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i16 %2, ptr %5, align 2
  %6 = add i64 %stack_var_-32.01.reload, 2
  %7 = icmp eq i64 %6, %arg2
  %8 = icmp eq i1 %7, false
  store i64 %6, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %6, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %8, label %dec_label_pc_4c222, label %dec_label_pc_4c23c

dec_label_pc_4c23c:                               ; preds = %dec_label_pc_4c222, %dec_label_pc_4c201
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPsmsEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c240:
  %0 = call ptr @_ZSt6fill_nIPsmsET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4c271:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4611686018427387903, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIsEE8max_sizeERKS0_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4c2d8, label %dec_label_pc_4c2d3

dec_label_pc_4c2d3:                               ; preds = %dec_label_pc_4c271
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4c2d8

dec_label_pc_4c2d8:                               ; preds = %dec_label_pc_4c2d3, %dec_label_pc_4c271
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIsE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_4c2da:
  ret i64 4611686018427387903
}

define i64 @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c2f2:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIsE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_4c33d, label %dec_label_pc_4c32a

dec_label_pc_4c32a:                               ; preds = %dec_label_pc_4c2f2
  %6 = icmp slt i64 %arg2, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_4c338, label %dec_label_pc_4c333

dec_label_pc_4c333:                               ; preds = %dec_label_pc_4c32a
  %8 = call i64 @anon2()
  br label %dec_label_pc_4c338

dec_label_pc_4c338:                               ; preds = %dec_label_pc_4c333, %dec_label_pc_4c32a
  %9 = call i64 @anon3()
  br label %dec_label_pc_4c33d

dec_label_pc_4c33d:                               ; preds = %dec_label_pc_4c338, %dec_label_pc_4c2f2
  %10 = mul i64 %arg2, 2
  %11 = call i64 @_Znwm(i64 %10)
  ret i64 %11
}

define void @_ZN9__gnu_cxx13new_allocatorIsEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_4c350:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPsET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c363:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEET_S8_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEET_S8_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPsET1_T0_SA_S9_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c3b2:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPsS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c3e3:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIsEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPsmsET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c414:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPsENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPsmsET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIsEE8max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4c45c:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEET_S8_(i64 %arg1) local_unnamed_addr {
dec_label_pc_4c47a:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEEPsET1_T0_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c48c:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPsET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKsPsET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPsET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c4fa:
  %0 = call i64 @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPsS0_ET1_T0_S2_S1_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIsEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c549:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 2
  %.pre = and i64 %2, -2
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_4c5a2, label %dec_label_pc_4c577

dec_label_pc_4c577:                               ; preds = %dec_label_pc_4c549
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -2
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_4c5a2

dec_label_pc_4c5a2:                               ; preds = %dec_label_pc_4c549, %dec_label_pc_4c577
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPsENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_4c5b8:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPsmsET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_4c5c6:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_4c5eb, label %dec_label_pc_4c61d

dec_label_pc_4c5eb:                               ; preds = %dec_label_pc_4c5c6
  %2 = mul i64 %arg2, 2
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPssEvT_S1_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4c61d

dec_label_pc_4c61d:                               ; preds = %dec_label_pc_4c5c6, %dec_label_pc_4c5eb
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_4c620:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIsE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_4c63e:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKsPsET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c65f:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKsPsET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_4c690:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPsE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPsET_S1_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPsS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c6b6:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPsET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPsET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPsET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPsS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPsET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKsPsET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c724:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPsE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_4c756:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPsS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c76b:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPsS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c79c:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 2
  br i1 %3, label %dec_label_pc_4c7e5, label %dec_label_pc_4c7ca

dec_label_pc_4c7ca:                               ; preds = %dec_label_pc_4c79c
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -2
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_4c7e5

dec_label_pc_4c7e5:                               ; preds = %dec_label_pc_4c7ca, %dec_label_pc_4c79c
  %9 = and i64 %2, -2
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPsS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c7f6:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_4c827:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 2
  br i1 %3, label %dec_label_pc_4c870, label %dec_label_pc_4c855

dec_label_pc_4c855:                               ; preds = %dec_label_pc_4c827
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -2
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_4c870

dec_label_pc_4c870:                               ; preds = %dec_label_pc_4c855, %dec_label_pc_4c827
  %9 = and i64 %2, -2
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @_ZNSt6vectorIsSaIsEEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_4c95e:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 2
  %2 = add i64 %1, %0
  ret i64 %2
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5a130:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-96 = alloca i64, align 8
  %stack_var_-98 = alloca i16, align 2
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIsSaIsEEC2Ev(ptr nonnull %stack_var_-88)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge.in = xor i32 %8, %9
  %10 = trunc i32 %storemerge.in to i16
  store i16 %10, ptr %stack_var_-98, align 2
  %11 = call i64 @_ZNSt6vectorIsSaIsEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %11, ptr %stack_var_-96, align 8
  %12 = ptrtoint ptr %stack_var_-96 to i64
  %13 = ptrtoint ptr %stack_var_-56 to i64
  %14 = trunc i64 %13 to i32
  %15 = trunc i64 %12 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEC2IPsEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %14, i32 %15)
  %16 = load i64, ptr %stack_var_-56, align 8
  %17 = call i64 @_ZNSt6vectorIsSaIsEE6insertEN9__gnu_cxx17__normal_iteratorIPKsS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %16, i64 1, ptr nonnull %stack_var_-98)
  %18 = call i64 @_ZNSt6vectorIsSaIsEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %18, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEC2IPsEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %14, i32 %15)
  %19 = load i64, ptr %stack_var_-56, align 8
  %20 = call i64 @_ZNSt6vectorIsSaIsEE6insertEN9__gnu_cxx17__normal_iteratorIPKsS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %19, i64 1, ptr nonnull %stack_var_-98)
  %21 = call i64 @_ZNSt6vectorIsSaIsEE3endEv(ptr nonnull %stack_var_-88)
  store i64 %21, ptr %stack_var_-96, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKsSt6vectorIsSaIsEEEC2IPsEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %14, i32 %15)
  %22 = load i64, ptr %stack_var_-56, align 8
  %23 = call i64 @_ZNSt6vectorIsSaIsEE6insertEN9__gnu_cxx17__normal_iteratorIPKsS1_EEmRS4_(ptr nonnull %stack_var_-88, i64 %22, i64 1, ptr nonnull %stack_var_-98)
  call void @_ZNSt6vectorIsSaIsEEC2ERKS1_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %24 = call i64 @anon1(i64 %13)
  call void @_ZNSt6vectorIsSaIsEED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIsSaIsEED2Ev(ptr nonnull %stack_var_-88)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_5a2db, label %dec_label_pc_5a2d6

dec_label_pc_5a2d6:                               ; preds = %dec_label_pc_5a130
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5a2db

dec_label_pc_5a2db:                               ; preds = %dec_label_pc_5a2d6, %dec_label_pc_5a130
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_5a61e:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt6vectorIsSaIsEEixEm(ptr %0, i64 2)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = add i16 %3, 1
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

