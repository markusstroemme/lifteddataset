define void @anon0() local_unnamed_addr {
dec_label_pc_6dda:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %1, label %dec_label_pc_6e4a, label %dec_label_pc_6dfc

dec_label_pc_6dfc:                                ; preds = %dec_label_pc_6dda
  br i1 %4, label %dec_label_pc_6e1b, label %dec_label_pc_6e11

dec_label_pc_6e11:                                ; preds = %dec_label_pc_6dfc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6e1b:                                ; preds = %dec_label_pc_6dfc
  %5 = call ptr @memset(ptr %2, i32 65, i32 99)
  %6 = ptrtoint ptr %2 to i64
  %7 = add i64 %6, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @free(ptr %2)
  br label %dec_label_pc_6e8a

dec_label_pc_6e4a:                                ; preds = %dec_label_pc_6dda
  br i1 %4, label %dec_label_pc_6e69, label %dec_label_pc_6e5f

dec_label_pc_6e5f:                                ; preds = %dec_label_pc_6e4a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6e69:                                ; preds = %dec_label_pc_6e4a
  %9 = call ptr @memset(ptr %2, i32 65, i32 99)
  %10 = ptrtoint ptr %2 to i64
  %11 = add i64 %10, 99
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  br label %dec_label_pc_6e8a

dec_label_pc_6e8a:                                ; preds = %dec_label_pc_6e69, %dec_label_pc_6e1b
  %13 = call i32 @globalReturnsTrueOrFalse()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_6ea4, label %dec_label_pc_6e98

dec_label_pc_6e98:                                ; preds = %dec_label_pc_6e8a
  %15 = bitcast ptr %2 to ptr
  call void @printLine(ptr %15)
  br label %dec_label_pc_6ea4

dec_label_pc_6ea4:                                ; preds = %dec_label_pc_6e98, %dec_label_pc_6e8a
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

