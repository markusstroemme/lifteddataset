define void @anon0() local_unnamed_addr {
dec_label_pc_6f70:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %1, label %dec_label_pc_6fd4, label %dec_label_pc_6f92

dec_label_pc_6f92:                                ; preds = %dec_label_pc_6f70
  br i1 %4, label %dec_label_pc_6fb1, label %dec_label_pc_6fa7

dec_label_pc_6fa7:                                ; preds = %dec_label_pc_6f92
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6fb1:                                ; preds = %dec_label_pc_6f92
  %5 = call ptr @memset(ptr %2, i32 65, i32 99)
  %6 = ptrtoint ptr %2 to i64
  %7 = add i64 %6, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  br label %dec_label_pc_7014

dec_label_pc_6fd4:                                ; preds = %dec_label_pc_6f70
  br i1 %4, label %dec_label_pc_6ff3, label %dec_label_pc_6fe9

dec_label_pc_6fe9:                                ; preds = %dec_label_pc_6fd4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6ff3:                                ; preds = %dec_label_pc_6fd4
  %9 = call ptr @memset(ptr %2, i32 65, i32 99)
  %10 = ptrtoint ptr %2 to i64
  %11 = add i64 %10, 99
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  br label %dec_label_pc_7014

dec_label_pc_7014:                                ; preds = %dec_label_pc_6ff3, %dec_label_pc_6fb1
  %13 = bitcast ptr %2 to ptr
  %14 = call i32 @globalReturnsTrueOrFalse()
  call void @printLine(ptr %13)
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

