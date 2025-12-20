define void @anon0() local_unnamed_addr {
dec_label_pc_7a8f:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_7af8, label %dec_label_pc_7aa4

dec_label_pc_7aa4:                                ; preds = %dec_label_pc_7a8f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7af8:                                ; preds = %dec_label_pc_7a8f
  %3 = call ptr @memset(ptr %0, i32 65, i32 99)
  %4 = ptrtoint ptr %0 to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = bitcast ptr %0 to ptr
  call void @printLine(ptr %7)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

