define i32 @staticReturnsTrue.407() local_unnamed_addr {
dec_label_pc_310ad:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_312a6:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.407()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_31304, label %dec_label_pc_312dd

dec_label_pc_312dd:                               ; preds = %dec_label_pc_312a6
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_31304

dec_label_pc_31304:                               ; preds = %dec_label_pc_312dd, %dec_label_pc_312a6
  %7 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %8 = bitcast ptr %stack_var_-184 to ptr
  %9 = call ptr @strcat(ptr nonnull %8, ptr nonnull %7)
  call void @printLine(ptr nonnull %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_31389, label %dec_label_pc_31384

dec_label_pc_31384:                               ; preds = %dec_label_pc_31304
  call void @__stack_chk_fail()
  br label %dec_label_pc_31389

dec_label_pc_31389:                               ; preds = %dec_label_pc_31384, %dec_label_pc_31304
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

