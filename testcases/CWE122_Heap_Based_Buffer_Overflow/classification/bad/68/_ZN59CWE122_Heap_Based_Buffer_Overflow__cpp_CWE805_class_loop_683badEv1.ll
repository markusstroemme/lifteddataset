@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_class_loop_68_badData = external local_unnamed_addr global ptr
@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3cb57:
  %0 = call i64 @_Znam(i64 400)
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_class_loop_68_badData, align 8
  %1 = call i64 @anon1()
  ret i64 %1
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_3cbd1:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-832 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_class_loop_68_badData, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = bitcast ptr %stack_var_-832 to ptr
  store i64 %5, ptr %6, align 8
  %7 = add i64 %2, -816
  %8 = add i64 %2, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_3cc0a

dec_label_pc_3cc0a:                               ; preds = %dec_label_pc_3cc0a, %dec_label_pc_3cbd1
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %9 = mul i64 %storemerge24.reload, 8
  %10 = add i64 %9, %7
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 8
  %12 = add i64 %8, %9
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge24.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_3cc4d, label %dec_label_pc_3cc0a

dec_label_pc_3cc4d:                               ; preds = %dec_label_pc_3cc0a, %dec_label_pc_3cc4d
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %15 = mul i64 %storemerge3.reload, 8
  %16 = load ptr, ptr %stack_var_-832, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = add i64 %15, %17
  %19 = add i64 %15, %7
  %20 = inttoptr i64 %19 to ptr
  %21 = load i64, ptr %20, align 8
  %22 = inttoptr i64 %18 to ptr
  store i64 %21, ptr %22, align 8
  %23 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %23, 100
  store i64 %23, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3cc8a, label %dec_label_pc_3cc4d

dec_label_pc_3cc8a:                               ; preds = %dec_label_pc_3cc4d
  %24 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_class_loop_68_badData, align 8
  call void @printIntLine(i32 %24)
  %25 = load ptr, ptr %stack_var_-832, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %dec_label_pc_3ccb3, label %dec_label_pc_3cca4

dec_label_pc_3cca4:                               ; preds = %dec_label_pc_3cc8a
  %27 = bitcast ptr %25 to ptr
  %28 = and i64 %1, 4294967295
  %29 = inttoptr i64 %28 to ptr
  call void @_ZdaPv(ptr %27, ptr %29)
  br label %dec_label_pc_3ccb3

dec_label_pc_3ccb3:                               ; preds = %dec_label_pc_3cca4, %dec_label_pc_3cc8a
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %3, %30
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %31, label %dec_label_pc_3ccc8, label %dec_label_pc_3ccc3

dec_label_pc_3ccc3:                               ; preds = %dec_label_pc_3ccb3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3ccc8

dec_label_pc_3ccc8:                               ; preds = %dec_label_pc_3ccc3, %dec_label_pc_3ccb3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_42e9b:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_531bc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

