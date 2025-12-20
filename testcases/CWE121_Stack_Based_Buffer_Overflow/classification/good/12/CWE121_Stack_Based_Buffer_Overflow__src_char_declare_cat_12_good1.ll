define void @anon0() local_unnamed_addr {
dec_label_pc_31d3d:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 0, ptr %stack_var_-184, align 8
  %7 = bitcast ptr %stack_var_-184 to ptr
  %8 = call ptr @strcat(ptr nonnull %7, ptr nonnull %1)
  call void @printLine(ptr nonnull %1)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_31e49, label %dec_label_pc_31e44

dec_label_pc_31e44:                               ; preds = %dec_label_pc_31d3d
  call void @__stack_chk_fail()
  br label %dec_label_pc_31e49

dec_label_pc_31e49:                               ; preds = %dec_label_pc_31e44, %dec_label_pc_31d3d
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5c45b:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

