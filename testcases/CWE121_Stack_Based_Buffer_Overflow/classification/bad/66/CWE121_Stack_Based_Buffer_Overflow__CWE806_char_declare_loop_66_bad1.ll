define void @anon0() local_unnamed_addr {
dec_label_pc_429ee:
  %stack_var_-168 = alloca i64, align 8
  %dataArray_-176 = alloca [5 x ptr], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = insertvalue [5 x ptr] undef, ptr %1, 0
  store [5 x ptr] %2, ptr %dataArray_-176, align 8
  %3 = bitcast ptr %dataArray_-176 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %4, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = bitcast ptr %stack_var_-168 to ptr
  call void @anon1(ptr nonnull %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_42a70, label %dec_label_pc_42a6b

dec_label_pc_42a6b:                               ; preds = %dec_label_pc_429ee
  call void @__stack_chk_fail()
  br label %dec_label_pc_42a70

dec_label_pc_42a70:                               ; preds = %dec_label_pc_42a6b, %dec_label_pc_429ee
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_42b0b:
  %.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %stack_var_-72 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %6 = call i32 @strlen(ptr %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %dec_label_pc_42bb0, label %dec_label_pc_42b86.lr.ph

dec_label_pc_42b86.lr.ph:                         ; preds = %dec_label_pc_42b0b
  %8 = sext i32 %6 to i64
  %9 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_42b86

dec_label_pc_42b86:                               ; preds = %dec_label_pc_42b86.lr.ph, %dec_label_pc_42b86
  %.reload = load i64, ptr %.reg2mem, align 8
  %10 = add i64 %.reload, %4
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = add i64 %.reload, %9
  %14 = inttoptr i64 %13 to ptr
  store i8 %12, ptr %14, align 1
  %15 = add nuw i64 %.reload, 1
  %16 = icmp ult i64 %15, %8
  store i64 %15, ptr %.reg2mem, align 8
  br i1 %16, label %dec_label_pc_42b86, label %dec_label_pc_42bb0

dec_label_pc_42bb0:                               ; preds = %dec_label_pc_42b86, %dec_label_pc_42b0b
  call void @printLine(ptr %5)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_42bd5, label %dec_label_pc_42bd0

dec_label_pc_42bd0:                               ; preds = %dec_label_pc_42bb0
  call void @__stack_chk_fail()
  br label %dec_label_pc_42bd5

dec_label_pc_42bd5:                               ; preds = %dec_label_pc_42bd0, %dec_label_pc_42bb0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

