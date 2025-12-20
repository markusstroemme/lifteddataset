define void @anon0() local_unnamed_addr {
dec_label_pc_57aca:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_57b2a, label %dec_label_pc_57b01

dec_label_pc_57b01:                               ; preds = %dec_label_pc_57aca
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 99)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_57b51

dec_label_pc_57b2a:                               ; preds = %dec_label_pc_57aca
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %8 = ptrtoint ptr %stack_var_-120 to i64
  %9 = add i64 %8, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_57b51

dec_label_pc_57b51:                               ; preds = %dec_label_pc_57b2a, %dec_label_pc_57b01
  %11 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %12 = call i32 @strlen(ptr nonnull %11)
  %13 = bitcast ptr %stack_var_-184 to ptr
  %14 = call ptr @strncpy(ptr nonnull %13, ptr nonnull %11, i32 %12)
  call void @printLine(ptr nonnull %11)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_57bec, label %dec_label_pc_57be7

dec_label_pc_57be7:                               ; preds = %dec_label_pc_57b51
  call void @__stack_chk_fail()
  br label %dec_label_pc_57bec

dec_label_pc_57bec:                               ; preds = %dec_label_pc_57be7, %dec_label_pc_57b51
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_7a115:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

