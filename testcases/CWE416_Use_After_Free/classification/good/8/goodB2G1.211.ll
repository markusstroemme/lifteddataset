@global_var_49a6a = external constant [21 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_62c0:
  ret i32 1
}

define i32 @staticReturnsFalse() local_unnamed_addr {
dec_label_pc_62cf:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_6369:
  %0 = call i32 @staticReturnsTrue()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_63d7, label %dec_label_pc_638b

dec_label_pc_638b:                                ; preds = %dec_label_pc_6369
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_63aa, label %dec_label_pc_63a0

dec_label_pc_63a0:                                ; preds = %dec_label_pc_638b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_63aa:                                ; preds = %dec_label_pc_638b
  %5 = ptrtoint ptr %2 to i64
  %6 = call ptr @memset(ptr %2, i32 65, i32 99)
  %7 = add i64 %5, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @free(ptr %2)
  br label %dec_label_pc_63d7

dec_label_pc_63d7:                                ; preds = %dec_label_pc_63aa, %dec_label_pc_6369
  %9 = call i32 @staticReturnsFalse()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_63f4, label %dec_label_pc_63e5

dec_label_pc_63e5:                                ; preds = %dec_label_pc_63d7
  call void @printLine(ptr @global_var_49a6a)
  br label %dec_label_pc_63f4

dec_label_pc_63f4:                                ; preds = %dec_label_pc_63e5, %dec_label_pc_63d7
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

