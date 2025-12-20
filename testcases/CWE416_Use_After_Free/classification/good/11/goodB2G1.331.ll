@global_var_49aa9 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_6b8f:
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_6bfd, label %dec_label_pc_6bb1

dec_label_pc_6bb1:                                ; preds = %dec_label_pc_6b8f
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_6bd0, label %dec_label_pc_6bc6

dec_label_pc_6bc6:                                ; preds = %dec_label_pc_6bb1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6bd0:                                ; preds = %dec_label_pc_6bb1
  %5 = ptrtoint ptr %2 to i64
  %6 = call ptr @memset(ptr %2, i32 65, i32 99)
  %7 = add i64 %5, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @free(ptr %2)
  br label %dec_label_pc_6bfd

dec_label_pc_6bfd:                                ; preds = %dec_label_pc_6bd0, %dec_label_pc_6b8f
  %9 = call i32 @globalReturnsFalse()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_6c1a, label %dec_label_pc_6c0b

dec_label_pc_6c0b:                                ; preds = %dec_label_pc_6bfd
  call void @printLine(ptr @global_var_49aa9)
  br label %dec_label_pc_6c1a

dec_label_pc_6c1a:                                ; preds = %dec_label_pc_6c0b, %dec_label_pc_6bfd
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3bd26:
  ret i32 0
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

