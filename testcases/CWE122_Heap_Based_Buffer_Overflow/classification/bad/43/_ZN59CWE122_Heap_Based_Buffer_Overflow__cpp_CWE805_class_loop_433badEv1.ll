@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_3a6db:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = call i64 @_Znam(i64 400)
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_3a702:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-848 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-848, align 8
  %4 = bitcast ptr %stack_var_-848 to ptr
  %5 = call i64 @anon0(ptr nonnull %4)
  %6 = add i64 %2, -816
  %7 = add i64 %2, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_3a747

dec_label_pc_3a747:                               ; preds = %dec_label_pc_3a747, %dec_label_pc_3a702
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %8 = mul i64 %storemerge13.reload, 8
  %9 = add i64 %8, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %7, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond4 = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge13.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_3a7b9.preheader, label %dec_label_pc_3a747

dec_label_pc_3a7b9.preheader:                     ; preds = %dec_label_pc_3a747
  %14 = load i64, ptr %stack_var_-848, align 8
  store i64 %14, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3a78a

dec_label_pc_3a78a:                               ; preds = %dec_label_pc_3a78a, %dec_label_pc_3a7b9.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %15 = mul i64 %storemerge2.reload, 8
  %16 = add i64 %15, %.reload
  %17 = add i64 %15, %6
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = inttoptr i64 %16 to ptr
  store i64 %19, ptr %20, align 8
  %21 = add nuw nsw i64 %storemerge2.reload, 1
  %22 = load i64, ptr %stack_var_-848, align 8
  %exitcond = icmp eq i64 %21, 100
  store i64 %22, ptr %.reg2mem, align 8
  store i64 %21, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3a7c3, label %dec_label_pc_3a78a

dec_label_pc_3a7c3:                               ; preds = %dec_label_pc_3a78a
  %23 = inttoptr i64 %22 to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %25 = load i64, ptr %stack_var_-848, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %dec_label_pc_3a7ee, label %dec_label_pc_3a7df

dec_label_pc_3a7df:                               ; preds = %dec_label_pc_3a7c3
  %27 = inttoptr i64 %25 to ptr
  %28 = and i64 %1, 4294967295
  %29 = inttoptr i64 %28 to ptr
  call void @_ZdaPv(ptr %27, ptr %29)
  br label %dec_label_pc_3a7ee

dec_label_pc_3a7ee:                               ; preds = %dec_label_pc_3a7df, %dec_label_pc_3a7c3
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %3, %30
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %31, label %dec_label_pc_3a803, label %dec_label_pc_3a7fe

dec_label_pc_3a7fe:                               ; preds = %dec_label_pc_3a7ee
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3a803

dec_label_pc_3a803:                               ; preds = %dec_label_pc_3a7fe, %dec_label_pc_3a7ee
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

