@global_var_89064 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3230b:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_89064, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_32366, label %dec_label_pc_3233f

dec_label_pc_3233f:                               ; preds = %dec_label_pc_3230b
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %5 = ptrtoint ptr %stack_var_-120 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_32366

dec_label_pc_32366:                               ; preds = %dec_label_pc_3233f, %dec_label_pc_3230b
  %8 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %9 = bitcast ptr %stack_var_-184 to ptr
  %10 = call ptr @strcat(ptr nonnull %9, ptr nonnull %8)
  call void @printLine(ptr nonnull %8)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_323eb, label %dec_label_pc_323e6

dec_label_pc_323e6:                               ; preds = %dec_label_pc_32366
  call void @__stack_chk_fail()
  br label %dec_label_pc_323eb

dec_label_pc_323eb:                               ; preds = %dec_label_pc_323e6, %dec_label_pc_32366
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

