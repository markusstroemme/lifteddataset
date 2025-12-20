@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_674b1:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-240 = alloca ptr, align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-232 to ptr
  store i8 0, ptr %1, align 8
  %.cast = ptrtoint ptr %stack_var_-232 to i64
  %2 = bitcast ptr %stack_var_-240 to ptr
  store i64 %.cast, ptr %2, align 8
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %.cast, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_6752d

dec_label_pc_6752d:                               ; preds = %dec_label_pc_6752d, %dec_label_pc_674b1
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %5 = add i64 %storemerge3.reload, %.reload
  %6 = add i64 %storemerge3.reload, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = inttoptr i64 %5 to ptr
  store i8 %8, ptr %9, align 1
  %10 = add nuw nsw i64 %storemerge3.reload, 1
  %11 = load ptr, ptr %stack_var_-240, align 8
  %12 = ptrtoint ptr %11 to i64
  %exitcond = icmp eq i64 %10, 100
  store i64 %12, ptr %.reg2mem, align 8
  store i64 %10, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_67563, label %dec_label_pc_6752d

dec_label_pc_67563:                               ; preds = %dec_label_pc_6752d
  %13 = add i64 %12, 99
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %15 = load ptr, ptr %stack_var_-240, align 8
  call void @printLine(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_67595, label %dec_label_pc_67590

dec_label_pc_67590:                               ; preds = %dec_label_pc_67563
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_67595

dec_label_pc_67595:                               ; preds = %dec_label_pc_67590, %dec_label_pc_67563
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

