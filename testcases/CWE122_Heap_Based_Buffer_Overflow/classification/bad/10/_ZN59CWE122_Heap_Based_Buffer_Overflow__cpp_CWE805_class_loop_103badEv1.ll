@global_var_531bc = external constant [4 x i8]
@0 = external global i32
@global_var_6c050 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_376d4:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %stack_var_-848.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_6c050, align 4
  %4 = icmp eq i32 %3, 0
  store i64 0, ptr %stack_var_-848.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_37718, label %dec_label_pc_37707

dec_label_pc_37707:                               ; preds = %dec_label_pc_376d4
  %5 = call i64 @_Znam(i64 400)
  store i64 %5, ptr %stack_var_-848.0.reg2mem, align 8
  br label %dec_label_pc_37718

dec_label_pc_37718:                               ; preds = %dec_label_pc_37707, %dec_label_pc_376d4
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-848.0.reload = load i64, ptr %stack_var_-848.0.reg2mem, align 8
  %7 = add i64 %6, -816
  %8 = add i64 %6, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_37725

dec_label_pc_37725:                               ; preds = %dec_label_pc_37725, %dec_label_pc_37718
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %9 = mul i64 %storemerge13.reload, 8
  %10 = add i64 %9, %7
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 8
  %12 = add i64 %8, %9
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond4 = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge13.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_37768, label %dec_label_pc_37725

dec_label_pc_37768:                               ; preds = %dec_label_pc_37725, %dec_label_pc_37768
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %15 = mul i64 %storemerge2.reload, 8
  %16 = add i64 %15, %stack_var_-848.0.reload
  %17 = add i64 %15, %7
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = inttoptr i64 %16 to ptr
  store i64 %19, ptr %20, align 8
  %21 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %21, 100
  store i64 %21, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_377a5, label %dec_label_pc_37768

dec_label_pc_377a5:                               ; preds = %dec_label_pc_37768
  %22 = inttoptr i64 %stack_var_-848.0.reload to ptr
  %23 = load i32, ptr %22, align 4
  call void @printIntLine(i32 %23)
  %24 = icmp eq i64 %stack_var_-848.0.reload, 0
  br i1 %24, label %dec_label_pc_377ce, label %dec_label_pc_377bf

dec_label_pc_377bf:                               ; preds = %dec_label_pc_377a5
  %25 = inttoptr i64 %stack_var_-848.0.reload to ptr
  %26 = and i64 %1, 4294967295
  %27 = inttoptr i64 %26 to ptr
  call void @_ZdaPv(ptr %25, ptr %27)
  br label %dec_label_pc_377ce

dec_label_pc_377ce:                               ; preds = %dec_label_pc_377bf, %dec_label_pc_377a5
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %2, %28
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %29, label %dec_label_pc_377e3, label %dec_label_pc_377de

dec_label_pc_377de:                               ; preds = %dec_label_pc_377ce
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_377e3

dec_label_pc_377e3:                               ; preds = %dec_label_pc_377de, %dec_label_pc_377ce
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

