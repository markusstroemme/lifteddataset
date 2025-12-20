@global_var_b4074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3edd6:
  %.reg2mem = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b4074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3ee31, label %dec_label_pc_3ee0a

dec_label_pc_3ee0a:                               ; preds = %dec_label_pc_3edd6
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %5 = ptrtoint ptr %stack_var_-120 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_3ee31

dec_label_pc_3ee31:                               ; preds = %dec_label_pc_3ee0a, %dec_label_pc_3edd6
  %8 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %9 = call i32 @strlen(ptr nonnull %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_3eedb, label %dec_label_pc_3ee9c.lr.ph

dec_label_pc_3ee9c.lr.ph:                         ; preds = %dec_label_pc_3ee31
  %11 = sext i32 %9 to i64
  %12 = ptrtoint ptr %stack_var_-120 to i64
  %13 = ptrtoint ptr %stack_var_-184 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_3ee9c

dec_label_pc_3ee9c:                               ; preds = %dec_label_pc_3ee9c.lr.ph, %dec_label_pc_3ee9c
  %.reload = load i64, ptr %.reg2mem, align 8
  %14 = add i64 %.reload, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = add i64 %.reload, %13
  %18 = inttoptr i64 %17 to ptr
  store i8 %16, ptr %18, align 1
  %19 = add nuw i64 %.reload, 1
  %20 = icmp ult i64 %19, %11
  store i64 %19, ptr %.reg2mem, align 8
  br i1 %20, label %dec_label_pc_3ee9c, label %dec_label_pc_3eedb

dec_label_pc_3eedb:                               ; preds = %dec_label_pc_3ee9c, %dec_label_pc_3ee31
  call void @printLine(ptr nonnull %8)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_3ef03, label %dec_label_pc_3eefe

dec_label_pc_3eefe:                               ; preds = %dec_label_pc_3eedb
  call void @__stack_chk_fail()
  br label %dec_label_pc_3ef03

dec_label_pc_3ef03:                               ; preds = %dec_label_pc_3eefe, %dec_label_pc_3eedb
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

