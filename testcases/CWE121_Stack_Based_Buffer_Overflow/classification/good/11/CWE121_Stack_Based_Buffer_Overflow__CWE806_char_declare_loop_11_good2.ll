define void @anon0() local_unnamed_addr {
dec_label_pc_3e38e:
  %.reg2mem = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3e3ec, label %dec_label_pc_3e3c5

dec_label_pc_3e3c5:                               ; preds = %dec_label_pc_3e38e
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_3e3ec

dec_label_pc_3e3ec:                               ; preds = %dec_label_pc_3e3c5, %dec_label_pc_3e38e
  %7 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_3e496, label %dec_label_pc_3e457.lr.ph

dec_label_pc_3e457.lr.ph:                         ; preds = %dec_label_pc_3e3ec
  %10 = sext i32 %8 to i64
  %11 = ptrtoint ptr %stack_var_-120 to i64
  %12 = ptrtoint ptr %stack_var_-184 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_3e457

dec_label_pc_3e457:                               ; preds = %dec_label_pc_3e457.lr.ph, %dec_label_pc_3e457
  %.reload = load i64, ptr %.reg2mem, align 8
  %13 = add i64 %.reload, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = add i64 %.reload, %12
  %17 = inttoptr i64 %16 to ptr
  store i8 %15, ptr %17, align 1
  %18 = add nuw i64 %.reload, 1
  %19 = icmp ult i64 %18, %10
  store i64 %18, ptr %.reg2mem, align 8
  br i1 %19, label %dec_label_pc_3e457, label %dec_label_pc_3e496

dec_label_pc_3e496:                               ; preds = %dec_label_pc_3e457, %dec_label_pc_3e3ec
  call void @printLine(ptr nonnull %7)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_3e4be, label %dec_label_pc_3e4b9

dec_label_pc_3e4b9:                               ; preds = %dec_label_pc_3e496
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e4be

dec_label_pc_3e4be:                               ; preds = %dec_label_pc_3e4b9, %dec_label_pc_3e496
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_7a0f7:
  ret i32 1
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

