@global_var_b4070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3dfcc:
  %.reg2mem = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b4070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3e026, label %dec_label_pc_3dfff

dec_label_pc_3dfff:                               ; preds = %dec_label_pc_3dfcc
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_3e026

dec_label_pc_3e026:                               ; preds = %dec_label_pc_3dfff, %dec_label_pc_3dfcc
  %7 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_3e0d0, label %dec_label_pc_3e091.lr.ph

dec_label_pc_3e091.lr.ph:                         ; preds = %dec_label_pc_3e026
  %10 = sext i32 %8 to i64
  %11 = ptrtoint ptr %stack_var_-120 to i64
  %12 = ptrtoint ptr %stack_var_-184 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_3e091

dec_label_pc_3e091:                               ; preds = %dec_label_pc_3e091.lr.ph, %dec_label_pc_3e091
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
  br i1 %19, label %dec_label_pc_3e091, label %dec_label_pc_3e0d0

dec_label_pc_3e0d0:                               ; preds = %dec_label_pc_3e091, %dec_label_pc_3e026
  call void @printLine(ptr nonnull %7)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_3e0f8, label %dec_label_pc_3e0f3

dec_label_pc_3e0f3:                               ; preds = %dec_label_pc_3e0d0
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e0f8

dec_label_pc_3e0f8:                               ; preds = %dec_label_pc_3e0f3, %dec_label_pc_3e0d0
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

