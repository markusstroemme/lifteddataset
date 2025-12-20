@global_var_b4054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4a779:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b4054, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_4a7d4, label %dec_label_pc_4a7ad

dec_label_pc_4a7ad:                               ; preds = %dec_label_pc_4a779
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %5 = ptrtoint ptr %stack_var_-120 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_4a7d4

dec_label_pc_4a7d4:                               ; preds = %dec_label_pc_4a7ad, %dec_label_pc_4a779
  %8 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %9 = call i32 @strlen(ptr nonnull %8)
  %10 = call ptr @memmove(ptr nonnull %stack_var_-184, ptr nonnull %stack_var_-120, i32 %9)
  call void @printLine(ptr nonnull %8)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_4a86f, label %dec_label_pc_4a86a

dec_label_pc_4a86a:                               ; preds = %dec_label_pc_4a7d4
  call void @__stack_chk_fail()
  br label %dec_label_pc_4a86f

dec_label_pc_4a86f:                               ; preds = %dec_label_pc_4a86a, %dec_label_pc_4a7d4
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

