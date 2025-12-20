define void @anon0() local_unnamed_addr {
dec_label_pc_3c0e7:
  %.reg2mem = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = add i64 %1, 49
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store i64 0, ptr %stack_var_-184, align 8
  %6 = call i32 @strlen(ptr nonnull %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %dec_label_pc_3c1e1, label %dec_label_pc_3c1a2.lr.ph

dec_label_pc_3c1a2.lr.ph:                         ; preds = %dec_label_pc_3c0e7
  %8 = sext i32 %6 to i64
  %9 = ptrtoint ptr %stack_var_-184 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_3c1a2

dec_label_pc_3c1a2:                               ; preds = %dec_label_pc_3c1a2.lr.ph, %dec_label_pc_3c1a2
  %.reload = load i64, ptr %.reg2mem, align 8
  %10 = add i64 %.reload, %1
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = add i64 %.reload, %9
  %14 = inttoptr i64 %13 to ptr
  store i8 %12, ptr %14, align 1
  %15 = add nuw i64 %.reload, 1
  %16 = icmp ult i64 %15, %8
  store i64 %15, ptr %.reg2mem, align 8
  br i1 %16, label %dec_label_pc_3c1a2, label %dec_label_pc_3c1e1

dec_label_pc_3c1e1:                               ; preds = %dec_label_pc_3c1a2, %dec_label_pc_3c0e7
  call void @printLine(ptr nonnull %2)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_3c209, label %dec_label_pc_3c204

dec_label_pc_3c204:                               ; preds = %dec_label_pc_3c1e1
  call void @__stack_chk_fail()
  br label %dec_label_pc_3c209

dec_label_pc_3c209:                               ; preds = %dec_label_pc_3c204, %dec_label_pc_3c1e1
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

