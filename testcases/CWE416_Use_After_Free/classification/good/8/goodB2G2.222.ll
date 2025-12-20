define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_62c0:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_63f7:
  %0 = call i32 @staticReturnsTrue()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_6465, label %dec_label_pc_6419

dec_label_pc_6419:                                ; preds = %dec_label_pc_63f7
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_6438, label %dec_label_pc_642e

dec_label_pc_642e:                                ; preds = %dec_label_pc_6419
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6438:                                ; preds = %dec_label_pc_6419
  %5 = ptrtoint ptr %2 to i64
  %6 = call ptr @memset(ptr %2, i32 65, i32 99)
  %7 = add i64 %5, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @free(ptr %2)
  br label %dec_label_pc_6465

dec_label_pc_6465:                                ; preds = %dec_label_pc_6438, %dec_label_pc_63f7
  %9 = call i32 @staticReturnsTrue()
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

